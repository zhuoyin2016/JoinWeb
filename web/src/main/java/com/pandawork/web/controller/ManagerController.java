package com.pandawork.web.controller;

import com.pandawork.common.entity.Manager;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.web.spring.AbstractController;
import com.sun.deploy.net.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by wangh on 2017/10/18.
 */
@Controller
@RequestMapping("/man")
@SessionAttributes("managerStatus")
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
     * @param manager
     * @param model
     * @param modelMap
     * @param redirectAttributes
     * @return
     * @throws SSException
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(Manager manager, Model model, ModelMap modelMap,RedirectAttributes redirectAttributes) throws SSException {

        if (Assert.isNull(manager.getUsername())) {
            redirectAttributes.addFlashAttribute("message", "用户名为空，请重新登录！！！");
            return "redirect:/man/login";
        }
        try {
            Manager manager1 = managerService.queryManagerByName(manager.getUsername());
            if (Assert.isNull(manager1)) {
                redirectAttributes.addFlashAttribute("message", "用户不存在，请重新登录！！！");
                return "redirect:/man/login";
            } else if (manager.getPassword().equals(manager1.getPassword())) {
                List<Manager> managerList = managerService.listAll();
                model.addAttribute("managerList",managerList);
                modelMap.addAttribute("managerStatus",manager1.getStatus());
                model.addAttribute("managerStatus",manager1.getStatus());
                return "manager/manager_main";
            } else if(manager.getPassword().equals("")){
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
     * @param managerStatus
     * @param model
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(@ModelAttribute("managerStatus") Integer managerStatus,Model model) {
        model.addAttribute("managerStatus",managerStatus);
        return "manager/add";
    }


    /**
     * 处理添加管理员
     * @param manager
     * @param model
     * @param managerStatus
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String doRegister(Manager manager,Model model,@ModelAttribute("managerStatus") Integer managerStatus,RedirectAttributes redirectAttributes) {

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
                    model.addAttribute("managerStatus",managerStatus);
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
     * @param managerStatus
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/delete/{id}" ,method = RequestMethod.GET)
    public String delete(@ModelAttribute("managerStatus") Integer managerStatus,@PathVariable("id") int id,Model model){
        try{
            managerService.deleteManager(id);
            model.addAttribute("managerStatus",managerStatus);
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
     * @param managerStatus
     * @return
     */
    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String update(@PathVariable("id") int id ,Model model,@ModelAttribute("managerStatus") Integer managerStatus){
        try{
            Manager manager = managerService.queryManagerById(id);
            model.addAttribute("manager",manager);
            model.addAttribute("managerStatus",managerStatus);
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
     * @param managerStatus
     * @param model
     * @return
     */
    @RequestMapping(value = "/update" ,method = RequestMethod.POST)
    public String doUpdate(Manager manager,@ModelAttribute("managerStatus") Integer managerStatus,Model model){
        try{
            managerService.updateManager(manager);
            model.addAttribute("managerStatus",managerStatus);
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

}
