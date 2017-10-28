package com.pandawork.service;

import com.pandawork.common.entity.Activity;
import com.pandawork.core.common.exception.SSException;

import java.util.List;

/**
 * 活动管理系统
 * ActivityService层
 * Created by zx on 2017/10/19.
 * 增加活动，根据id删除活动，更新活动，根据id查询活动，根据标题查询活动
 *
 */
public interface ActivityService {

    /**
     * 增加活动
     * @throws SSException 异常
     */
    public void addActivity(Activity activity) throws SSException;

    /**
     * 根据id删除活动
     * @throws SSException 异常
     */
    public boolean delActivityById(int id) throws SSException;

    /**
     * 更新活动
     * @throws SSException 异常
     */
    public void updateActivity(Activity activity) throws SSException;

    /**
     * 根据id查询活动
     * @param id id
     * @return 返回
     * @throws SSException 异常
     */
    public Activity queryActivityById(int id) throws SSException;

    /**
     * 根据标题查询活动
     * @param title
     * @return
     * @throws SSException
     */
    public List<Activity> queryActivityByTitle(String title)throws SSException;

    /**
     *列出全部活动
     * @return 返回
     * @throws SSException 异常
     */
    public List<Activity> listActivityAll() throws SSException;
}
