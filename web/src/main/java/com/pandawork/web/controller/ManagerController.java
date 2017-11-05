package com.pandawork.web.controller;

import com.pandawork.common.entity.CurrentManager;
import com.pandawork.common.entity.Manager;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.web.spring.AbstractController;
import com.sun.deploy.net.HttpRequest;
import org.omg.CORBA.Current;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by wangh on 2017/10/18..
 */
@Controller
@RequestMapping("/man")
@SessionAttributes("currentManager")
public class ManagerController extends AbstractController {

    /**
     * 跳到登录页面
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "manager/login";
    }


    /**
     * 处理管理员登录
     * @param currentManager
     * @param model
     * @param modelMap
     * @param redirectAttributes
     * @return
     * @throws SSException
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(CurrentManager currentManager, Model model, ModelMap modelMap, RedirectAttributes redirectAttributes) throws SSException {

        if (Assert.isNull(currentManager.getCurrentUsername())) {
            redirectAttributes.addFlashAttribute("message", "用户名为空，请重新登录！！！");
            return "redirect:/man/login";
        }
        try {
            Manager manager1 = managerService.queryManagerByName(currentManager.getCurrentUsername());
            if (Assert.isNull(manager1)) {
                redirectAttributes.addFlashAttribute("message", "用户不存在，请重新登录！！！");
                return "redirect:/man/login";
            } else if (currentManager.getCurrentPassword().equals(manager1.getPassword())) {
                List<Manager> managerList = managerService.listAll();
                model.addAttribute("managerList",managerList);
                currentManager.setCurrentStatus(manager1.getStatus());
                currentManager.setCurrentId(manager1.getId());
                modelMap.addAttribute("currentManager",currentManager);
                model.addAttribute("currentManager",currentManager);
                model.addAttribute("managerStatus",currentManager.getCurrentStatus());
                return "manager/manager_main";
            } else if(currentManager.getCurrentPassword().equals("")){
                redirectAttributes.addFlashAttribute("message", "密码不能为空！！！");
                return "redirect:/man/login";
            }
            else {
                redirectAttributes.addFlashAttribute("message", "密码错误，请重新登录！！！");
                return "redirect:/man/login";
            }
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }

    }


    /**
     * 跳到添加管理员页面
     * @param currentManager
     * @param model
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(@ModelAttribute("currentManager") CurrentManager currentManager,Model model) {
        model.addAttribute("managerStatus",currentManager.getCurrentStatus());
        return "manager/add";
    }


    /**
     * 处理添加管理员
     * @param manager
     * @param model
     * @param currentManager
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String doRegister(Manager manager,Model model,@ModelAttribute("currentManager") CurrentManager currentManager,RedirectAttributes redirectAttributes) {

        if(Assert.isNull(manager.getUsername())||Assert.isNull(manager.getPassword())){
            redirectAttributes.addFlashAttribute("message","用户名、密码均不能为空！！！");
            return "redirect:/man/add";
        }
        try {
            Manager manager1 = managerService.queryManagerByName(manager.getUsername());
            if(Assert.isNull(manager1)){
                    Manager manager2 = new Manager();
                    manager2.setUsername(manager.getUsername());
                    manager2.setPassword(manager.getPassword());
                    manager2.setStatus(manager.getStatus());
                    managerService.addManager(manager2);
                    model.addAttribute("message","添加管理员成功！！！");
                    List<Manager> managerList = managerService.listAll();
                    model.addAttribute("managerList",managerList);
                    model.addAttribute("managerStatus",currentManager.getCurrentStatus());
                    System.out.println(managerList);
                    return "manager/manager_main";
            }else{
                redirectAttributes.addFlashAttribute("message","用户名已存在，请重新添加！！！");
                return "redirect:/man/add";
            }
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }

    }


    /**
     * 删除管理员
     * @param currentManager
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/delete/{id}" ,method = RequestMethod.GET)
    public String delete(@ModelAttribute("currentManager") CurrentManager currentManager,@PathVariable("id") int id,Model model){
        try{
            managerService.deleteManager(id);
            model.addAttribute("managerStatus",currentManager.getCurrentStatus());
            List<Manager> managerList = managerService.listAll();
            model.addAttribute("managerList",managerList);
            model.addAttribute("message","删除成功！！！");
            return "manager/manager_main";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 跳到修改管理级别页面
     * @param id
     * @param model
     * @param currentManager
     * @return
     */
    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String update(@PathVariable("id") int id ,Model model,@ModelAttribute("currentManager") CurrentManager currentManager){
        try{
            Manager manager = managerService.queryManagerById(id);
            model.addAttribute("manager",manager);
            model.addAttribute("managerStatus",currentManager.getCurrentStatus());
            return "manager/update";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 修改管理级别
     * @param manager
     * @param currentManager
     * @param model
     * @return
     */
    @RequestMapping(value = "/update" ,method = RequestMethod.POST)
    public String doUpdate(Manager manager,@ModelAttribute("currentManager") CurrentManager currentManager,Model model){
        try{
            managerService.updateManager(manager);
            model.addAttribute("managerStatus",currentManager.getCurrentStatus());
            List<Manager> managerList = managerService.listAll();
            model.addAttribute("managerList",managerList);
            model.addAttribute("message","修改成功！！！");

            return "manager/manager_main";

        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 跳到修改个人信息页面
     * @param model
     * @param currentManager
     * @return
     */
    @RequestMapping(value = "/single",method = RequestMethod.GET)
    public String single(Model model,@ModelAttribute("currentManager") CurrentManager currentManager){
        model.addAttribute("currentManager",currentManager);
        return "manager/single";
    }


    /**
     * 处理修改个人信息
     * @param manager
     * @param oldPassword
     * @param password2
     * @param redirectAttributes
     * @param model
     * @param currentManager
     * @return
     */
    @RequestMapping(value = "single" ,method = RequestMethod.POST)
    public String doUpdate(Manager manager, @RequestParam("oldPassword") String oldPassword,@RequestParam("password2") String password2,RedirectAttributes redirectAttributes ,Model model,@ModelAttribute("currentManager") CurrentManager currentManager){
        if (Assert.isNull(manager.getPassword())||Assert.isNull(password2)||Assert.isNull(oldPassword)) {
            redirectAttributes.addFlashAttribute("message", "请输入完整信息！！！");
            return "redirect:/man/single";
        }
        try {
            Manager manager2 = managerService.queryManagerById(currentManager.getCurrentId());
            if (oldPassword.equals(manager2.getPassword())) {
                if(manager.getPassword().equals(password2)){
                    manager.setId(currentManager.getCurrentId());
                    manager.setStatus(currentManager.getCurrentStatus());
                    managerService.updateManager(manager);
                    redirectAttributes.addFlashAttribute("message", "密码修改成功，请重新登录！！！");
                    return "redirect:/man/login";
                }else {
                    redirectAttributes.addFlashAttribute("message", "两次新密码输入不一致！！！");
                    return "redirect:/man/single";
                }
            }
            else {
                redirectAttributes.addFlashAttribute("message", "原密码错误！！！");
                return "redirect:/man/single";

            }
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 遍历管理员
     * @param currentManager
     * @param model
     * @return
     */
    @RequestMapping(value = "/all" ,method = RequestMethod.GET)
    public String listAll(@ModelAttribute("currentManager") CurrentManager currentManager,Model model){
        try{
            model.addAttribute("managerStatus",currentManager.getCurrentStatus());
            List<Manager> managerList = managerService.listAll();
            model.addAttribute("managerList",managerList);
            return "manager/manager_main";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 退出账号
     * @param httpSession
     * @param sessionStatus
     * @param model
     * @return
     */
    @RequestMapping(value = "/logout" ,method = RequestMethod.GET)
    public String logout(HttpSession httpSession, SessionStatus sessionStatus,Model model){
        httpSession.removeAttribute("currentManager"); //清除HttpSession的数据
        System.out.println("退出："+httpSession.getAttribute("currentManager"));
        sessionStatus.setComplete(); //清除@SessionAttributes的session,不会清除HttpSession的数据
        model.addAttribute("message","退出成功！！！");
        return "manager/login";

    }


}
