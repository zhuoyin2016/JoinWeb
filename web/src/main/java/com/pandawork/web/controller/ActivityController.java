package com.pandawork.web.controller;
import com.pandawork.common.entity.Activity;
import com.pandawork.common.entity.Manager;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.service.ActivityService;
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
@SessionAttributes("activity")
public class ActivityController extends AbstractController{

    /**
     * 列出全部，跳转到后台管理页面
     * @param model
     * @return
     */
    @RequestMapping(value = "/listAll" ,method = RequestMethod.GET)
    public  String listAll(Model model){
        try{
            List<Activity> activityList = activityService.listActivityAll();
            model.addAttribute("activityList" , activityList);
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
     * 列出全部，跳转到前台页面
     * @param model
     * @return
     */
    @RequestMapping(value = "/listAll2" ,method = RequestMethod.GET)
    public  String listAll2(Model model){
        try{
            List<Activity> activityList = activityService.listActivityAll();
            model.addAttribute("activityList" , activityList);
            return "activity/listall2";
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
     * @param model
     * @return
     */

    @RequestMapping(value = "/select/{id}" ,method = RequestMethod.GET)
    public  String selectActivity(@PathVariable("id")int id, Model model){
        try{
            Activity activity = new Activity();
            activity = activityService.queryActivityById(id);
            model.addAttribute("activity",activity);
            return "/activity/selact";         //jsp
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
    public String addActivity(Activity activity, @RequestParam("file") CommonsMultipartFile file,HttpServletRequest request) throws SSException {
        //使用springMVC提供的CommonsMultipartFile类进行读取文件
        String filename = file.getOriginalFilename();
        //UUID.randomUUID()局唯一标识符,是指在一台机器上生成的数字，它保证对在同一时空中的所有机器都是唯一的
        String newFileName = UUID.randomUUID() + filename;
        //获取的的tomcat的路径，部署项目后相当于项目的路径
        ServletContext sc = request.getSession().getServletContext();
        String path = sc.getRealPath("image/activity_img") + "/";
        File f = new File(path);
        if (!f.exists()) {
            //如果该文件夹不存在，则创建该文件夹
            f.mkdirs();
        }
        if (!file.isEmpty()) {
            try {
                //创建一个向具有指定名称的文件中写入数据的输出文件流。
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                //截取
                InputStream in = file.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) {
                    //写入
                    fos.write(b);
                }
                //关闭流
                fos.close();
                in.close();
            } catch (IOException e) {
                LogClerk.errLog.error(e);
                sendErrMsg(e.getMessage());
                return ADMIN_SYS_ERR_PAGE;
            } catch (Exception e) {
                e.printStackTrace();
                return ADMIN_SYS_ERR_PAGE;
            }
        }
        activity.setActivityImg1(newFileName);
        activityService.addActivity(activity);
        return "redirect:/activity/listAll";
    }

    /**
     * 跳转到增加活动
     * @return
     */
    @RequestMapping(value = "/toadd", method = RequestMethod.GET)
    public String toAdd(){
        return "activity/add";
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

    //转到新活动
    @RequestMapping(value = "/toUpdate/{id}", method = RequestMethod.GET)
    public String update(@PathVariable("id") int id, Model model, HttpServletRequest request) {
        try {
            String message = request.getParameter("message");
            Activity activity = activityService.queryActivityById(id);
            model.addAttribute("activity",activity);
            return "activity/update";         //jsp
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 修改活动
     */
    @RequestMapping(value = "/updateActivity", method = RequestMethod.POST)
    public String updateActivity(Activity activity, @RequestParam("file") CommonsMultipartFile file,HttpServletRequest request) throws SSException {
        try {
            String filename = file.getOriginalFilename();
            if (Assert.isNull(filename)) {
                activityService.updateActivity(activity);
                return "redirect:/activity/listAll";
            } else {
                String newFileName = UUID.randomUUID() + filename;
                ServletContext sc = request.getSession().getServletContext();
                String path = sc.getRealPath("image/activity_img") + "/";
                File f = new File(path);
                if (!f.exists()) {
                    f.mkdirs();
                }
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                InputStream in = file.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) {
                    fos.write(b);
                }
                fos.close();
                in.close();
                activity.setActivityImg1(newFileName);
                activityService.updateActivity(activity);
                return "redirect:/activity/listAll";
            }


        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
