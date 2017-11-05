package com.pandawork.web.controller;

import com.pandawork.common.entity.CurrentManager;
import com.pandawork.common.entity.Image;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;

import com.pandawork.web.spring.AbstractController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
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
 * Created by houst,liuz on 2017/10/20.
 * 上传图片处理，上传图片，根据id删除图片，列出全部图片，
 * 跳转到选择轮播图片的页面，选择图片的页面，选择轮播图片成功并放到卓音主页
 */

@Controller
@RequestMapping("/image")
@SessionAttributes({"num","number"})
public class ImagesController extends AbstractController{

    /**
     * 上传图片处理
     * @param num num

     * @return 返回
     */
    @RequestMapping(value ="/to_add_image/{num}/{number}", method = RequestMethod.GET)
    public String toAddImage(@PathVariable("num") int num, @PathVariable("number") int number,ModelMap modelMap,Model model) throws SSException {
       modelMap.addAttribute("num",num);
        modelMap.addAttribute("number",number);
        return "redirect:/image/list2";
    }


    /**
     * 上传图片
     * @param file file
     * @param request request
     * @param model model
     * @return 返回
     * @throws SSException 异常
     */
    @RequestMapping(value = "/add_image", method = RequestMethod.POST)
    public String addImage(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request, Model model) throws SSException {

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

        return "redirect:/image/list2";
    }

    /**
     * 根据id删除图片
     * @param id id
     * @return 返回
     */
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delImageById(@PathVariable("id") int id,HttpServletRequest request) {
        try {
//            删除文件夹中的图片
            Image image = imageService.queryImageById(id);
            String name = image.getImgName();
            System.out.println(name);
            String fileName = name.substring(name.lastIndexOf("/") + 1);
            String newPath = request.getSession().getServletContext().getRealPath("/image/upload_image") +"/" +fileName;
            System.out.println(newPath);
            File f = new File(newPath);
            if(f.exists()){
                f.delete();
                System.out.println("文件夹中的图片删除成功");
            }

            //删除数据库中的图片
            imageService.delImageById(id);
            System.out.println("数据库删除成功");

            return "redirect:/image/list2";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 列出全部图片
     * @param model model
     * @return 返回
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listImageAll(Model model) {
        try {
            List<Image> imageList = Collections.emptyList();
            imageList = imageService.listImageAll();
            int number = 0;
            int num = 0;
            model.addAttribute("imageList", imageList);
            model.addAttribute("number", number);
            model.addAttribute("num", num);
            return "/image/img_list";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/list2", method = RequestMethod.GET)
    public String listImageAll2(Model model,@ModelAttribute("num") int num,@ModelAttribute("number") int number) {
        try {
            List<Image> imageList = Collections.emptyList();
            imageList = imageService.listImageAll();
            model.addAttribute("imageList", imageList);
            model.addAttribute("num",num);
            model.addAttribute("number",number);
            return "/image/img_list";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 跳转到选择轮播图片的页面
     * @param model model
     * @return 返回
     * @throws SSException 异常
     */
    @RequestMapping(value = "/select_image", method = RequestMethod.GET)
    public String toSelectImage(Model model) throws SSException {
        List<Image> imageList = Collections.emptyList();
        List<Image> slImageList = Collections.emptyList();
        imageList = imageService.listImageAll();
        slImageList = imageService.listSlImageAll();
        model.addAttribute("imageList", imageList);
        model.addAttribute("slImageList",slImageList);
        return "/image/select_img_list";
    }

    /**
     * 选择图片的页面
     * @param id id
     * @return 返回
     */
    @RequestMapping(value = "/select/{id}",method = RequestMethod.GET)
    public String selectImage(@PathVariable("id")int id){
        try{
            Image image = imageService.queryImageById(id);
            int sl = image.getSelect();
            System.out.println(sl);
            if(sl == 0){
                image.setSelect(1);
            }else{
                image.setSelect(0);
            }
            imageService.updateImage(image);
            System.out.println("选择成功！");
            return "redirect:/image/select_image";

        }catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }

    }


    /**
     * 选择轮播图片成功，放到卓音主页
     * @param model model
     * @return 返回
     */
    @RequestMapping(value = "/select_ok",method = RequestMethod.POST)
    public String slOkImage(Model model){
        try{
            List<Image> slImageList = Collections.emptyList();
            slImageList = imageService.listSlImageAll();
            model.addAttribute("slImageList", slImageList);
            return "....";//跳转到卓音主页
        }catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }




//    /**
//     * 根据id查询图片(前端可实现点击图片放大浏览图片,我们可以不用写)
//     * @param id
//     * @return
//     */
//    @RequestMapping(value ="query/{id}",method = RequestMethod.GET)
//    public String queryImageById(@RequestParam("id") int id) {
//        try {
//            imageService.queryImageById(id);
//            return "redirect:/image/......";
//        } catch (SSException e ){
//            LogClerk.errLog.error(e);
//            sendErrMsg(e.getMessage());
//            return ADMIN_SYS_ERR_PAGE;
//        }
//    }




}
