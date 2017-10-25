package com.pandawork.web.controller;

import com.pandawork.common.entity.Member;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/**
 * newframework
 * Created by TestUser on 2017/10/19.
 */
@Controller
@RequestMapping("/member")
public class MemberController extends AbstractController{

    //返回首页
    @RequestMapping(value = "/join",method = RequestMethod.GET)
    public String join(){
        return "member/join";
    }


    //根据部门查找
@RequestMapping(value = "/queryByDepartment/{depart}",method = RequestMethod.GET)
    public String queryByDepartment(@PathVariable("depart") int depart, Model model, RedirectAttributes redirectAttributes){
    try{
        if (Assert.isNull(depart)){
            redirectAttributes.addAttribute("message","无成员");
            return "member/join";
        }
        List<Member> memberList = memberService.queryMemberByDepartment(depart);
     if(Assert.isNull(memberList)){
         redirectAttributes.addAttribute("message","没有相关部门");
         return "member/join";
     }
        model.addAttribute("memberList",memberList);

        return "member/member";
    } catch (Exception e) {
        LogClerk.errLog.error(e);
        sendErrMsg(e.getMessage());
        return ADMIN_SYS_ERR_PAGE;
    }
  }


  //跳到增加成员界面
   @RequestMapping(value = "/addMember",method = RequestMethod.GET)
    public String addMember ( Model model ,HttpServletRequest request){
       String message = request.getParameter("message");
       model.addAttribute("message",message);
//
       return "member/add_member";
   }


//增加成员
   @RequestMapping(value ="/toaddMember",method = RequestMethod.POST)
    public String toaddMember(Member member ,@RequestParam("file")CommonsMultipartFile file, RedirectAttributes redirectAttributes , HttpServletRequest request){
       String  filename = file.getOriginalFilename();
       String newFileName =  UUID.randomUUID()+ filename;
       ServletContext sc = request.getSession().getServletContext();
       String path = sc.getRealPath("image/memberImage")+"/";
       File f = new File(path);
       if(!f.exists()){
           f.mkdirs();
       }
       try {
           if(Assert.isNull(member.getMemberPhoto())||Assert.isNull(member.getMemberName())||Assert.isNull(member.getSex())||Assert.isZero(member.getGrade())||
               Assert.isNull(member.getMajor())|| Assert.isZero(member.getDepartment())||Assert.isZero(member.getPosition()) ||Assert.isNull(member.getIntroduce())){
               redirectAttributes.addAttribute("message","请填入完整信息！");
               return "redirect:/member/addMember";
           }else {
               FileOutputStream fos = new FileOutputStream(path+newFileName);
               InputStream in = file.getInputStream();
               int b = 0;
               while((b = in.read())!=-1){
                   fos.write(b);
               }
               fos.close();
               in.close();
               member.setMemberPhoto(newFileName);
               memberService.addMember(member);
               return "redirect:/member/join";
           }
       } catch (SSException e){
           LogClerk.errLog.error(e);
           sendErrMsg(e.getMessage());
           return ADMIN_SYS_ERR_PAGE;
       } catch (Exception e) {
           e.printStackTrace();
           return ADMIN_SYS_ERR_PAGE;
       }
   }


   //列出全部
    @RequestMapping(value = "/listAllMember" ,method = RequestMethod.GET)
    public  String listAllMember(Model model){
        try{
            List<Member> memberList = Collections.emptyList();
            memberList= memberService.listAll();
            model.addAttribute("memberList" , memberList);
            return "member/listAll";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        } catch (Exception e) {
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }
    }

 //  删除成员
    @RequestMapping(value = "/delMember/{memberList.id}" ,method = RequestMethod.GET)
    public String delMember(@PathVariable("memberList.id") int id ) {

      try{
         Member member = memberService.queryMemberById(id);
          member.setMemberPhoto(member.getMemberPhoto());
          member.setMemberName(member.getMemberName());
          member.setSex(member.getSex());
          member.setGrade(member.getGrade());
          member.setMajor(member.getMajor());
          member.setDepartment(member.getDepartment());
          member.setPosition(member.getPosition());
          member.setIntroduce(member.getIntroduce());
          member.setVisible(0);
          member.setId(id);
          memberService.updateMember(member);
          return "redirect:/member/listAllMember";
       } catch (Exception e) {
          LogClerk.errLog.error(e);
          sendErrMsg(e.getMessage());
          return ADMIN_SYS_ERR_PAGE;
      }
    }
   //转到成员信息跟新页面
   @RequestMapping(value = "/update/{memberList.id}",method = RequestMethod.GET)
   public String update(@PathVariable("memberList.id") int id , Model model ,HttpServletRequest request )  {
       System.out.println("啦啦啦啦啦啦啦啦啦啦啦"+id);
    try{
        String message  = request.getParameter("message");
        Member member = memberService.queryMemberById(id);
        model.addAttribute("message",message);
        model.addAttribute("member",member);
        return "member/update";


    } catch (Exception e) {
        LogClerk.errLog.error(e);
        sendErrMsg(e.getMessage());
        return ADMIN_SYS_ERR_PAGE;
    }
   }
//修改页面
    @RequestMapping(value = "/toUpdate",method = RequestMethod.GET)
    public String toUpdate(Member member, RedirectAttributes redirectAttributes )
    {

        try{
            if(Assert.isNull(member.getMemberName())||Assert.isNull(member.getSex())||Assert.isZero(member.getGrade())||
                Assert.isNull(member.getMajor())|| Assert.isZero(member.getDepartment())||Assert.isZero(member.getPosition()) ||Assert.isNull(member.getIntroduce())){
                redirectAttributes.addAttribute("message","请填入完整信息！");
                return "redirect:/member/update"+member.getId();
            }else {
                memberService.updateMember(member);
                return "redirect:/member/listAllMember";
            }

        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}