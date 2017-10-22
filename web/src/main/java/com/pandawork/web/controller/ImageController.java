package com.pandawork.web.controller;

import com.pandawork.common.entity.Image;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.Log;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.web.spring.AbstractController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/**
 * ImageController层
 * ()
 * Created by houst,liuz on 2017/10/20.
 */
@Controller
@RequestMapping("/image")
public class ImageController extends AbstractController{

    /**
     * 上传图片的处理
     * @param num num
     * @param session session
     * @return 返回
     */
    @RequestMapping(value = "/to_add_image/{num}",method = RequestMethod.GET)
    public String toAddImage(@PathVariable("num")int num, HttpSession session){
        session.setAttribute("num",num);
        return "redirect:/image/list";
    }

    /**
     * 上传图片
     * @param file file
     * @param model model
     * @param request request
     * @return 返回
     * @throws SSException 异常
     */
    @RequestMapping(value="/add_image",method = RequestMethod.POST)
    public String addImage(@RequestParam("file")CommonsMultipartFile file, Model model, HttpServletRequest request) throws SSException {
        //使用SpringMVC提供的CommonsMultipartFile类进行读取文件
        //获取原始文件名
        String filename = file.getOriginalFilename();
        System.out.println("原始文件名" + filename);

        //UUID.randomUUID()是唯一标识符，是指在一台机器上随机生成的数字，保证在同一时空中的所有机器都是唯一的
        String newFileName =  UUID.randomUUID() + filename;

        //使用ServletContext中的getServletContext().getRealPath("...")获取...的绝对路径
        String path = request.getSession().getServletContext().getRealPath("images") + "/";
        File f = new File(path);//文件夹也是个文件
        if(!f.exists()){
            //如果文件夹不存在，则创建文件夹
            f.mkdirs();
        }
        if(!file.isEmpty()){
            try{
                //目的文件(创建一个向具有指定名称的文件写入数据的输出文件流)
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                System.out.println(path + "    " +newFileName);
                //获取jsp获得的file的输入流
                InputStream in = file.getInputStream();
                int b = 0;
                //若一直有输入流，则一直输出到fos指定的文件夹
                while((b = in.read())!=-1){
                    fos.write(b);
                }
                fos.close();
                in.close();
            }catch (IOException e){
                e.printStackTrace();
            } catch (Exception ex){
                ex.printStackTrace();
            }
        }
        model.addAttribute("msg","上传图片成功！");


        //将文件名传入数据库
        Image image = new Image();
        String imgName = "../../images/" + newFileName;
        image.setImgName(imgName);
        image.setSelect(0);
        imageService.addImage(image);

        return "redirect:/image/list";

    }

    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public String delImage(@PathVariable("id")int id){
        try{
            //删除上传的文件

            imageService.delImageById(id);
        }catch(SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
        return "redirect:/image/list";
    }

    /**
     * 显示图片列表页面
     * @param model model
     * @return 返回
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String imageList(Model model){
        try{
            List<Image> imageList =Collections.emptyList();
            imageList = imageService.listImageAll();
            model.addAttribute("imageList",imageList);
            return "image/img_list";
        }catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
