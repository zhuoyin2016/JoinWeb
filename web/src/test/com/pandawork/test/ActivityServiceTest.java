package com.pandawork.test;

import com.pandawork.common.entity.Activity;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.ActivityService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 活动管理系统
 * 测试service页面
 * activityService
 * Created by zx on 2017/10/24.
 */

public class ActivityServiceTest extends AbstractTestCase {

    @Autowired
    ActivityService activityService;

    //测试新增活动
    @Test
    public void testAddActivity() throws SSException {
        Activity activity = new Activity();
        activity.setActivityTime("2017-3-24");
        activity.setActivityTitle("吃栗子");
        activity.setActivityContent("软的");
        activity.setActivityImg1("kkk");
        activity.setActivityImg2("kkk");
        activity.setActivityImg3("kkk");
        activityService.addActivity(activity);
        System.out.println("添加成功");
    }

    //测试删除活动
    @Test
    public void testDelActivityById() throws SSException{
        activityService.delActivityById(4);
        System.out.println("删除成功");

    }

    //测试更新活动
    @Test
    public void testUpdateActivity() throws SSException{
        Activity activity = activityService.queryActivityById(5);
        activity.setActivityTime("2017-12-10");
        activity.setActivityTitle("吃李子");
        activity.setActivityContent("酸的");
        activity.setActivityImg1("kkk");
        activity.setActivityImg2("kkk");
        activity.setActivityImg3("kkk");
        activityService.updateActivity(activity);
        System.out.println("更新成功");

    }

    //测试根据ID查询活动
    @Test
    public void testQueryActivityById() throws SSException {
        System.out.println(activityService.queryActivityById(1));
    }

    //测试根据标题查询活动
    @Test
    public void testQueryActivityByTitle() throws SSException {
        System.out.println(activityService.queryActivityByTitle("吃"));
    }

    //测试查询活动列表
    @Test
    public void testListActivityAll() throws SSException{
        System.out.println(activityService.listActivityAll());
    }


}
