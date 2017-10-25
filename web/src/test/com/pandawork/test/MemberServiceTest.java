package com.pandawork.test;
import com.pandawork.common.entity.Member;
import com.pandawork.service.MemberService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.Table;
import java.util.Date;
import java.util.List;

/**
 * 学生管理系统
 * 测试service页面
 * studentService
 * Created by fujia on 2016/3/26.
 */
public class MemberServiceTest extends AbstractTestCase {

    @Autowired
    MemberService memberService;

    //测试新增c成员信息
    @Test
    public void testNewMember() throws Exception {
        Member member = new Member();
        member.setMemberPhoto("2.jpg");
        member.setMemberName("单总");
        member.setSex("男");
        member.setGrade(2015);
        member.setMajor("软件");
        member.setDepartment(3);
        member.setPosition(1);
        member.setIntroduce("小");
        member.setVisible(1);
        memberService.addMember(member);
        System.out.println("tianjiachenggong ");
    }
//删除成员
     @Test
    public void testDelMember() throws Exception{
    memberService.delMember(3);
    System.out.println("删除成功");
}
//修改成员
    @Test
    public void testUpdateMember() throws Exception{
    Member member = new Member();
    member.setMemberPhoto("2.jpg");
    member.setMemberName("阿鑫");
    member.setSex("nv");
    member.setGrade(2015);
    member.setMajor("aaaa");
    member.setDepartment(3);
    member.setPosition(1);
    member.setIntroduce("fffffffffk");
    member.setVisible(1);
    member.setId(4);
    memberService.updateMember(member);

}
//遍历全部成员
@Test
    public void testListAll() throws Exception{
    System.out.println(memberService.listAll());
}

//根据id查找成员
@Test
     public void  testQueryById() throws Exception{
    Member member = new Member();
    System.out.println(memberService.queryMemberById(2));

}

//根据部门
@Test
    public void testQueryByDepart() throws Exception{
    System.out.println(memberService.queryMemberByDepartment(0));
}

//根据级别
    @Test
    public  void testQueryByPosition() throws Exception{
        System.out.println(memberService.queryMemberByPosition(1));
    }
    //根据年级
    @Test
    public void testQueryByGrade() throws Exception{
        System.out.println(memberService.queryMemberByGrade(2016));
    }
}
