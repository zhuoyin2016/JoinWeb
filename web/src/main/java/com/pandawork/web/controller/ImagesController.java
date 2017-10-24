package com.pandawork.web.controller;

import com.pandawork.common.entity.Image;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.web.spring.AbstractController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
 * Created by houst,liuz on 2017/10/20.
 */

@Controller
@RequestMapping("/image")
public class ImageController extends AbstractController{

    /**
     * 上传图片处理
     * @param num num
     * @param session session
     * @return 返回
     */
    @RequestMapping(value ="/to_add_image/{num}", method = RequestMethod.GET)
    public String toAddImage(@PathVariable("num")int num, HttpSession session) {
        session.setAttribute("num",num);
        return "redirect:/image/list";
    }


    @RequestMapping(value = "/add_image", method = RequestMethod.POST)
    public String addImage(@RequestParam("file")CommonsMultipartFile file, HttpServletRequest request,Model model) throws SSException {

        //使用springMVC提供的CommonsMultipartFile类进行读取文件
        //获取原文件名，并在后台输出
        String filename = file.getOriginalFilename();
        System.out.println(filename);

        //UUID.randomUUID()局唯一标识符,是指在一台机器上生成的数字，它保证对在同一时空中的所有机器都是唯一的
        String newFileName = UUID.randomUUID() + filename;

        //获取的的tomcat的路径，部署项目后相当于项目的路径。
        String path = request.getSession().getServletContext().getRealPath("/image/upload_image") + "/";
        File f = new File(path);//文件夹也是文件
        if(!f.exists()){
            //如果该文件夹不存在，则创建该文件夹
            f.mkdirs();
        }
        if(!file.isEmpty()){
            try{
                //创建一个向具有指定名称的文件中写入数据的输出文件流。
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                System.out.println(path +newFileName);
                //截取
                InputStream in = file.getInputStream();
                int b = 0;
                while((b = in.read())!=-1){
                    //写入
                    fos.write(b);
                }
                //关闭流
                fos.close();
                in.close();
            }catch (IOException e){
                e.printStackTrace();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        model.addAttribute("msg","上传成功！");

        //将图片路径保存到数据库中
        Image image = new Image();
        String name = "../../image/upload_image/" + newFileName;
        image.setImgName(name);
        image.setSelect(0);
        imageService.addImage(image);

        return "redirect:/image/list";
    }

    /**
     * 根据id删除图片
     * @param id
     * @return
     */
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delImageById(@PathVariable("id") int id) {
        try {
            imageService.delImageById(id);
            return "redirect:/image/list";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 根据id更新图片
     * @param image
     * @param id
     * @return
     */
    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String updateImage(Image image, @PathVariable("id") int id) {
        try {
            if(!Assert.isNotNull(image)){
                return null;
            }
            imageService.updateImage(image);
            return "redirect:/image/list";
        } catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 跳转到更新页面
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String editImage(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {
        redirectAttributes.addAttribute("id", id);
        return "edit";
    }

    /**
     * 根据id查询图片
     * @param id
     * @return
     */
    @RequestMapping(value ="query/{id}",method = RequestMethod.GET)
    public String queryImageById(@RequestParam("id") int id) {
        try {
            imageService.queryImageById(id);
            return "redirect:/image/list";
        } catch (SSException e ){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 列出全部图片
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listImageAll(Model model) {
        try {
            List<Image> imageList = Collections.emptyList();
            imageList = imageService.listImageAll();
            model.addAttribute("imageList", imageList);
            return "/image/img_list";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
