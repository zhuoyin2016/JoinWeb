package com.pandawork.web.controller;

import com.pandawork.common.entity.CurrentManager;
import com.pandawork.common.entity.Image;
import com.pandawork.common.entity.Member;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.web.spring.AbstractController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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
 * newframework陈芳,
 * Created by TestUser on 2017/10/19.
 * 部门成员控制层
 */
@Controller
@RequestMapping("/member")
@SessionAttributes("currentManager")
public class MemberController extends AbstractController {
//
//    /**
//     * 返回后台管理页面首页
//     * @return
//     */
//    @RequestMapping(value = "/join", method = RequestMethod.GET)
//    public String join() {
//        return "member/join";
//    }

    /**
     * 跳到前台页面的首页，并将轮播图片中要轮播的图片传到首页
     * @param model
     * @return
     * @throws SSException
     */
    @RequestMapping(value = "/join2", method = RequestMethod.GET)
    public String join2(Model model) throws SSException {
        List<Image> slImageList = Collections.emptyList();
        slImageList = imageService.listSlImageAll();
        model.addAttribute("slImageList",slImageList);
        return "index_join";
    }

    /**
     * 根据部门查找成员，返回对应成员展示页面。后台页面
     * @param depart  部门1代表研究生团队，2代表前端，3代表后端，4代表产品
     * @param model
     * @param redirectAttributes
     * @param currentManager
     * @return
     */
    @RequestMapping(value = "/queryByDepartment/{depart}", method = RequestMethod.GET)
    public String queryByDepartment(@PathVariable("depart") int depart, Model model, RedirectAttributes redirectAttributes, @ModelAttribute("currentManager") CurrentManager currentManager) {
        try {
            //没有传入depart部门
            if (Assert.isNull(depart)) {
                redirectAttributes.addAttribute("message", "无成员");
                return "member/join";
            }
            List<Member> memberList = memberService.queryMemberByDepartment(depart);
            //该部门中没有人
            if (Assert.isNull(memberList)) {
                redirectAttributes.addAttribute("message", "没有相关部门");
                return "member/join";
            }
            model.addAttribute("memberList", memberList);
            model.addAttribute("managerStatus", currentManager.getCurrentStatus());
            //如果是1代表研究生，跳到研究生管理页面
            if (depart == 1) {
                return "member/member_one";
            } else if (depart == 2) {       //如果是2代表前端，跳到前端管理页面
                return "member/member_two";
            } else if (depart == 3) {          //如果是3代表后端，跳到后端管理页面
                return "member/member_three";
            } else {                           //如果是4代表产品部，跳到产品部管理页面
                return "member/member_four";
            }
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 根据部门查找，跳回前台展示页面
     * @param depart
     * @param model
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/queryByDepartment2/{depart}", method = RequestMethod.GET)
    public String queryByDepartment2(@PathVariable("depart") int depart, Model model, RedirectAttributes redirectAttributes) {
        try {

            if (Assert.isNull(depart)) {
                redirectAttributes.addAttribute("message", "无成员");
                return "member/join2";
            }
            List<Member> memberList = memberService.queryMemberByDepartment(depart);
            if (Assert.isNull(memberList)) {
                redirectAttributes.addAttribute("message", "没有相关部门");
                return "member/join2";
            }
            model.addAttribute("memberList", memberList);

            if (depart == 1) {
                return "member/postgraduate";      //如果是1代表研究生，跳到研究生页面
            } else if (depart == 2) {
                return "member/front";            //如果是2代表前端，跳到前端页面
            } else if (depart == 3) {
                return "member/back_end";            //如果是3代表前端，跳到后端页面
            } else {
                return "member/product";            //如果是4代表前端，跳到管理员页面
            }

        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    /**
     * 跳到增加页面
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/addMember", method = RequestMethod.GET)
    public String addMember(Model model, HttpServletRequest request) {
        String message = request.getParameter("message");
        model.addAttribute("message", message);
        return "member/add_member";
    }


    /**
     * 增加页面
     * @param member
     * @param file
     * @param redirectAttributes
     * @param request
     * @return
     */
    @RequestMapping(value = "/toaddMember", method = RequestMethod.POST)
    public String toaddMember(Member member, @RequestParam("file") CommonsMultipartFile file, RedirectAttributes redirectAttributes, HttpServletRequest request) {
       //获取的文件名
        String filename = file.getOriginalFilename();
       //在文件名前加上随机生成的字符，避免重名
        String newFileName = UUID.randomUUID() + filename;
        ServletContext sc = request.getSession().getServletContext();
        //将上传的图片加到文件夹下。若没有，自动创建
        String path = sc.getRealPath("image/memberImage") + "/";
        File f = new File(path);
        if (!f.exists()) {
            f.mkdirs();
        }
        try {
            //填入的数据有一项为空，则返回该页面，并提示请填入完整信息
            if (Assert.isNull(member.getMemberPhoto()) || Assert.isNull(member.getMemberName()) || Assert.isNull(member.getSex()) || Assert.isZero(member.getGrade()) ||
                    Assert.isNull(member.getMajor()) || Assert.isZero(member.getDepartment()) || Assert.isZero(member.getPosition()) || Assert.isNull(member.getIntroduce())) {
                redirectAttributes.addAttribute("message", "请填入完整信息！");
                return "redirect:/member/addMember";
            } else {
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                InputStream in = file.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) {
                    fos.write(b);
                }
                fos.close();
                in.close();
                //将图片文件名改为上传到服务器的名称，是保持一致
                member.setMemberPhoto(newFileName);
                //执行增加方法
                memberService.addMember(member);
                int depart = member.getDepartment();
                //返回页面，展示
                return "redirect:/member/queryByDepartment/" + depart;

            }
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        } catch (Exception e) {
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }
    }


//    /**
//     * 列出全部去信息
//     * @param model
//     * @return
//     */
//    @RequestMapping(value = "/listAllMember", method = RequestMethod.GET)
//    public String listAllMember(Model model) {
//        try {
//            List<Member> memberList = Collections.emptyList();
//            memberList = memberService.listAll();
//            model.addAttribute("memberList", memberList);
//            return "member/listAll";
//        } catch (SSException e) {
//            LogClerk.errLog.error(e);
//            sendErrMsg(e.getMessage());
//            return ADMIN_SYS_ERR_PAGE;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ADMIN_SYS_ERR_PAGE;
//        }
//    }

    /**
     * 删除图片，假性删除 //假性删除，执行的是修改方法
     * @param id
     * @return
     */
    @RequestMapping(value = "/delMember/{memberList.id}", method = RequestMethod.GET)
    public String delMember(@PathVariable("memberList.id") int id) {

        try {

            Member member = memberService.queryMemberById(id);
            member.setMemberPhoto(member.getMemberPhoto());
            member.setMemberName(member.getMemberName());
            member.setSex(member.getSex());
            member.setGrade(member.getGrade());
            member.setMajor(member.getMajor());
            member.setDepartment(member.getDepartment());
            member.setPosition(member.getPosition());
            member.setIntroduce(member.getIntroduce());
            //将是否可见字段设置未0
            member.setVisible(0);
            member.setId(id);
            //执行修改方法
            memberService.updateMember(member);
            int depart = member.getDepartment();
            return "redirect:/member/queryByDepartment/" + depart;
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 根据id更新信息，跳转到更新页面
     * @param id
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable("id") int id, Model model, HttpServletRequest request) {
        try {
            String message = request.getParameter("message");
            Member member = memberService.queryMemberById(id);
            model.addAttribute("message", message);
            model.addAttribute("member", member);
            return "member/update";
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    /**
     * 执行修改页面
     * @param member
     * @param file
     * @param redirectAttributes
     * @param request
     * @return
     */
    @RequestMapping(value = "/toUpdate", method = RequestMethod.POST)
    public String toUpdate(Member member, @RequestParam("file") CommonsMultipartFile file, RedirectAttributes redirectAttributes, HttpServletRequest request) {
        try {
            int depart = member.getDepartment();
            String filename = file.getOriginalFilename();
            //判断文件名是否为空，若为空，则成员头像名称不用改变
            if (Assert.isNull(filename)) {
                System.out.println("啊啊啊啊啊啊啊啊啊啊啊啊啊" + filename);
                memberService.updateMember(member);
                return "redirect:/member/queryByDepartment/" + depart;
            } else {

                //若不为空，则将成员头像上传到服务器并将  数据库中成员头像的信息改变，与上传到服务器的头像名称保持一致。
                String newFileName = UUID.randomUUID() + filename;
                System.out.println("啦啦啦啦啦绿少时诵诗书" + filename);
                ServletContext sc = request.getSession().getServletContext();
                String path = sc.getRealPath("image/memberImage") + "/";
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
                member.setMemberPhoto(newFileName);
              //执行修改方法，返回页面
                memberService.updateMember(member);
                return "redirect:/member/queryByDepartment/" + depart;
            }
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}