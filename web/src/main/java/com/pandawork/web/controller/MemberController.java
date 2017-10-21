//package com.pandawork.web.controller;
//
//import com.pandawork.common.entity.Member;
//import com.pandawork.core.common.log.LogClerk;
//import com.pandawork.core.common.util.Assert;
//import com.pandawork.service.MemberService;
//import com.pandawork.web.spring.AbstractController;
//import org.apache.ibatis.annotations.Param;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import java.util.Collections;
//import java.util.List;
//
///**
// * newframework
// * Created by TestUser on 2017/10/19.
// */
//@Controller
//@RequestMapping("/member")
//public class MemberController extends AbstractController{
//
//    //返回首页
//    @RequestMapping(value = "/join",method = RequestMethod.GET)
//    public String join(){
//        return "join";
//    }
//
//
//    //根据部门查找
//@RequestMapping(value = "/queryByDepartment/{depart}",method = RequestMethod.GET)
//    public String queryByDepartment(@PathVariable("depart") int depart, Model model, RedirectAttributes redirectAttributes){
//    try{
//        if (Assert.isNull(depart)){
//            redirectAttributes.addAttribute("message","无成员");
//            return "join";
//        }
//        List<Member> memberList = memberService.queryMemberByDepartment(depart);
//     if(Assert.isNull(memberList)){
//         redirectAttributes.addAttribute("message","没有相关部门");
//         return "join";
//     }
//     model.addAttribute("memberList",memberList);
//        return "member";
//    } catch (Exception e) {
//        LogClerk.errLog.error(e);
//        sendErrMsg(e.getMessage());
//        return ADMIN_SYS_ERR_PAGE;
//    }
//  }
//
//
////  //跳到增加成员界面
////   @RequestMapping(value = "/addMember",method = RequestMethod.POST)
////    public String addMember ()
//
//}