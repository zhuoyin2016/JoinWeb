package com.pandawork.service;

import com.pandawork.common.entity.Activity;
import com.pandawork.core.common.exception.SSException;

import java.util.List;

/**
 * activityService层
 * Created by Zhangx,liuz on 2017/10/21.
 * 增加活动，根据id删除活动，更新活动，根据id查询活动，查询活动列表
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
     * @return 返回活动
     * @throws SSException 异常
     */
    public Activity queryActivityById(int id) throws SSException;

    /**
     *查询活动列表
     * @return 返回
     * @throws SSException 异常
     */
    public List<Activity> listActivityAll() throws SSException;
}
