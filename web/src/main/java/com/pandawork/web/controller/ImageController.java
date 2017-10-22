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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.Collections;
import java.util.List;

/**
 * Created by houst,liuz on 2017/10/20.
 */

@Controller
@RequestMapping("/image")
public class ImageController extends AbstractController{

    /**
     * 添加图片处理
     * @param image
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value ="/new", method = RequestMethod.POST)
    public String addImage(Image image, RedirectAttributes redirectAttributes) {
        try {
            imageService.addImage(image);
            redirectAttributes.addFlashAttribute("message", "添加成功！");
            return "redirect:/image/list";
        } catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 跳转到添加页面
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAddImage(){
        return "add";
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
            List<Image> list = Collections.emptyList();
            list = imageService.listImageAll();
            model.addAttribute("studentList", list);
            return "listImageAll";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
