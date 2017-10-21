package com.pandawork.mapper;

import com.pandawork.common.entity.Activity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 活动展示mapper层
 * Created by Zhangx,liuz on 2017/10/21.
 * 增加活动，删除活动，修改活动，根据id查询活动，查询活动列表
 */
public interface ActivityMapper {
    /**
     * 增加活动
     * @param activity 活动
     * @throws Exception 异常
     */
    public void addActivity(@Param("activity") Activity activity) throws Exception;

    /**
     *根据id删除活动
     * @param id id
     * @throws Exception 异常
     */
    public boolean delActivityById(@Param("id") int id) throws Exception;

    /**
     * 修改活动
     * @param activity 活动
     * @throws Exception 异常
     */
    public void updateActivity(@Param("activity") Activity activity) throws Exception;

    /**
     * 根据id查找活动
     * @param id id
     * @return 返回
     * @throws Exception 异常
     */
    public  Activity queryActivityById(@Param("id") int id) throws Exception;

    /**
     * 查询所有活动列表
     * @return 返回
     * @throws Exception 异常
     */
    public List<Activity> listActivityAll() throws Exception;
}
