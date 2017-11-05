package com.pandawork.web.controller;
import com.pandawork.common.entity.Activity;
import com.pandawork.common.entity.Manager;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.pandawork.web.spring.AbstractController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.SqlResultSetMapping;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/**
 * Created by zx on 2017/11/4.
 */
@Controller
@RequestMapping("/activity")
public class ActivityController extends AbstractController{

    /**
     * 列出全部
     * @param model
     * @return
     */
    @RequestMapping(value = "/listAll" ,method = RequestMethod.GET)
    public  String listAll(Model model){
        try{
            List<Activity> activityList = activityService.listActivityAll();
            model.addAttribute("activityList" , activityList);
            System.out.println(activityList);
            return "activity/listall";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        } catch (Exception e) {
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }
    }
    /**
     * 根据选择的id列出活动
     * 活动首页
     * @param model
     * @return
     */

    @RequestMapping(value = "/select/{id}" ,method = RequestMethod.GET)
    public  String selectActivity(@PathVariable("id")int id, Model model){
        try{
            Activity activity = new Activity();
            activity = activityService.queryActivityById(id);
            model.addAttribute("activity",activity);
            return "/activity/selact";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        } catch (Exception e) {
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 返回首页
     * @return
     */
    @RequestMapping(value = "/return" ,method = RequestMethod.GET)
    public  String toReturn(){
        try{
            return "redirect:/activity/listAll";
        } catch (Exception e) {
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 增加活动
     */
    @RequestMapping(value ="/addActivity", method = RequestMethod.POST)
    public String newActivity(Activity activity, RedirectAttributes redirectAttributes) {
        try {
            activityService.addActivity(activity);
            redirectAttributes.addFlashAttribute("message", "添加成功！");
            return "redirect:/activity/listAll";
        } catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 跳转到增加活动
     * @return
     */
    @RequestMapping(value = "/toadd", method = RequestMethod.GET)
    public String toAdd(){
        return "add";
    }

    /**
     * 删除活动
     * @param id
     * @return
     */
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        try {
            activityService.delActivityById(id);
            return "redirect:/activity/listAll";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
