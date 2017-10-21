package com.pandawork.web.controller;

import com.pandawork.common.entity.Joiner;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.pandawork.web.spring.AbstractController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.SqlResultSetMapping;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Created by 芋头 on 2017/10/19.
 */
@Controller
@RequestMapping("/joiner")
public class joinerController extends AbstractController {

    /**
     * 遍历所有学生
     * @param model
     * @return
     */
    @RequestMapping(value = "/listJoiner",method = RequestMethod.GET)
    public String joinerList(Model model){
        try{
            List<Joiner> joinerList = Collections.emptyList();
            joinerList = joinerService.listAllJoiner();
            model.addAttribute("joinerList",joinerList);
            return "joiner/listAll";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = "/toAddJ",method = RequestMethod.GET)
    public String toAddJ(){
            return "joiner/addJoiner";
    }

    @RequestMapping(value = "/addJoiner",method = RequestMethod.POST)
    public String addJoiner(Joiner joiner, RedirectAttributes redirectAttributes) {
        try {
            joinerService.addJoiner(joiner);
            redirectAttributes.addFlashAttribute("message", "添加成功！");
            return "joiner/addJoiner";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
