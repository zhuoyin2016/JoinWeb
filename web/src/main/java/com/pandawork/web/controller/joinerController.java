package com.pandawork.web.controller;

import com.pandawork.common.entity.Joiner;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.pandawork.web.spring.AbstractController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.SqlResultSetMapping;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Created by 芋头 on 2017/10/19.
 */
@Controller
@RequestMapping("/joiner")
@SessionAttributes("Message")
public class joinerController extends AbstractController {

    /**
     * 遍历所有学生
     * @param model
     * @return
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String joinerList(Model model){
        try{
            List<Joiner> list = Collections.emptyList();
            list = joinerService.listAllJoiner();
            model.addAttribute("list",list);
            return "joiner/listAll";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     *跳转到报名页面
     * @return
     */
    @RequestMapping(value = "/toAddJ",method = RequestMethod.GET)
    public String toAddJ(){
            return "joiner/addJoiner";
    }

    /**
     * 报名页面
     * @param joiner
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/addJoiner",method = RequestMethod.POST)
    public String addJoiner(Joiner joiner, RedirectAttributes redirectAttributes) {
        try {
            joinerService.addJoiner(joiner);
            String message = "提交成功";
            return "redirect:/joiner/message/" + message;
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 显示报名学生信息
     * @param id
     * @param model
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String showJoiner(@PathVariable("id") int id,Model model,RedirectAttributes redirectAttributes){
        try{
            Joiner joiner = joinerService.queryJoinerById(id);
            model.addAttribute("joiner",joiner);
            return "joiner/show";
        }catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;}
    }

    /**
     * 消息提醒
     * @param message
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/message/{message}",method = RequestMethod.GET)
    public String message(@PathVariable("message") String message,RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", message);
        return "joiner/message";
    }

    /**
     * 删除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/del/{id}",method = RequestMethod.GET)
    public String del(@PathVariable("id") int id,Model model){
        try{
            joinerService.delJoiner(id);
            model.addAttribute("Message","删除成功");
            return "redirect:/joiner/list";
        }catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;}
    }

    /**
     * 审核
     * @param id
     * @param state
     * @return
     */
    @RequestMapping(value = "/check/{id}",method = RequestMethod.POST)
    public String check(@PathVariable("id") int id,@RequestParam("joinerState")int state){
        try{
            joinerService.updateState(state,id);
            return "redirect:/joiner/list";
        }catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;}
    }

    @RequestMapping(value = "/search",method = RequestMethod.POST)
    public String search(@RequestParam("type") String type,@RequestParam("keyWord") String keyWord,Model model) {
        try {
            if (!Assert.isNotNull(keyWord)) {
                String message = "输入不能为空";
                return "redirect:/joiner/message" + message;
            }
            List<Joiner> list = Collections.emptyList();
            if (type.equals("sex")) {
                list = joinerService.queryJoinerBySex(keyWord);
            }
            if (type.equals("grade")) {
                list = joinerService.queryJoinerByGrade(keyWord);
            }
            if (type.equals("major")) {
                list = joinerService.queryJoinerByMajor(keyWord);
            }
            if (type.equals("state")) {
                if (keyWord.equals("待审核")) {
                    list = joinerService.queryJoinerByState(0);
                }
                if (keyWord.equals("审核通过")) {
                    list = joinerService.queryJoinerByState(1);
                }
                if (keyWord.equals("审核为通过")) {
                    list = joinerService.queryJoinerByState(2);
                }
            }
            System.out.println(list);
            if (list.isEmpty()) {
                String message = "没有与搜索条件匹配的项";
                return "redirect:/joiner/message" + message;
            }
            model.addAttribute("list", list);
            return "joiner/search";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;}
        }
    }
