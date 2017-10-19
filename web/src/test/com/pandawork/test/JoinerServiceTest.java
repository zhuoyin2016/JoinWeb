package com.pandawork.test;

import com.pandawork.common.entity.Joiner;
import com.pandawork.common.entity.Student;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.JoinerService;
import com.pandawork.service.StudentService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * 学生管理系统
 * 测试service页面
 * studentService
 * Created by fujia on 2016/3/26.
 */
public class JoinerServiceTest extends AbstractTestCase {

    @Autowired
    JoinerService joinerService;

    //测试新增学生信息
    @Test
    public void testAddJoiner() throws SSException {
        Joiner joiner = new Joiner();
        joiner.setJoinerName("小龙");
        joiner.setJoinerPhoto("mmmmmm");
        joiner.setJoinerSex("男");
        joiner.setJoinerGrade("2017");
        joiner.setJoinerRanking("67/120");
        joiner.setJoinerBir("吉林省长春市南关区");
        joiner.setJoinerCollege("信科");
        joiner.setJoinerMajor("计算机");
        joiner.setJoinerNum("13145236578");
        joiner.setJoinerQQ("2453314776");
        joiner.setJoinerDep("后端");
        joiner.setJoinerIntro("我学习！");
        joiner.setJoinerReason("你管我");
        joinerService.addJoiner(joiner);
        System.out.println("添加成功");
    }

    //测试查询学生信息列表
    @Test
    public void testListAllJoiner() throws SSException{
        System.out.print(joinerService.listAllJoiner());
    }


    //测试删除学生信息
    @Test
    public void testDelJoiner() throws SSException{
        joinerService.delJoiner(3);
        System.out.println("删除成功");
    }

    //测试更新学生信息
    @Test
    public void testUpdateJoiner() throws SSException{
        Joiner joiner = new Joiner();
        joiner.setJoinerName("小龙");
        joiner.setJoinerPhoto("mmmmmm");
        joiner.setJoinerSex("男");
        joiner.setJoinerGrade("2017");
        joiner.setJoinerRanking("67/120");
        joiner.setJoinerBir("吉林省长春市南关区");
        joiner.setJoinerCollege("信科");
        joiner.setJoinerMajor("计算机");
        joiner.setJoinerNum("13145236578");
        joiner.setJoinerQQ("2453314776");
        joiner.setJoinerDep("后端");
        joiner.setJoinerIntro("我学习！");
        joiner.setJoinerReason("你管我");
        joiner.setJoinerState(1);
        joiner.setId(1);
        joinerService.updateJoiner(joiner);
        System.out.println("更新成功");
    }

    //测试根据ID查询学生信息
    @Test
    public void testQueryJoinerById() throws SSException {
        System.out.println(joinerService.queryJoinerById(1));
    }

    //测试根据年级查询学生信息
    @Test
    public void testQueryJoinerByGrade() throws SSException{
        System.out.println(joinerService.queryJoinerByGrade("2017"));
    }

    //测试根据性别查询学生信息
    @Test
    public void testQueryJoinerBySex() throws SSException{
        System.out.println(joinerService.queryJoinerBySex("男"));
    }

    //测试根据专业查询学生信息
    @Test
    public void testQueryJoinerByMajor() throws SSException{
        System.out.println(joinerService.queryJoinerByMajor("软件"));
    }

    //测试根据状态查询学生信息
    @Test
    public void testQueryJoinerByState() throws SSException{
        System.out.println(joinerService.queryJoinerByState(0));
    }

}
