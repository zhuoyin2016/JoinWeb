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

//    /**
//     * 新增图片
//     * @param image
//     * @param redirectAttributes
//     * @return
//     */
//    @RequestMapping(value ="/add", method = RequestMethod.POST)
//    public String addImage(Image image, RedirectAttributes redirectAttributes) {
//        try {
//            imageService.addImage(image);
//            redirectAttributes.addFlashAttribute("message", "添加成功！");
//            return "redirect:/image/list";
//        } catch (SSException e){
//            LogClerk.errLog.error(e);
//            sendErrMsg(e.getMessage());
//            return ADMIN_SYS_ERR_PAGE;
//        }
//    }

    /**
     * 根据id删除图片
     * @param id
     * @return
     */
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delImageById(@PathVariable("id") int id) {
        try {
            imageService.delImageById(id);
            return "redirect:/image/list";//删除后还需重定向页面才可获取最新列表
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

}
