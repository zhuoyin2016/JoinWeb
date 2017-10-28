package com.pandawork.mapper;

import com.pandawork.common.entity.Activity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 活动mapper层
 * Created by zx on 2017/10/22.
 * 增加活动，根据id删除活动，更新活动，根据id查询活动，根据标题查询活动，列出全部活动
 */
public interface ActivityMapper {
    /**
     * 增加活动
     * @param activity
     * @throws Exception
     */
    public void addActivity(@Param("activity") Activity activity) throws Exception;

    /**
     *根据id删除活动
     * @param id
     * @throws Exception
     */
    public boolean delActivityById(@Param("id") int id) throws Exception;

    /**
     * 更新活动
     * @param activity
     * @throws Exception
     */
    public void updateActivity(@Param("activity") Activity activity) throws Exception;

    /**
     * 根据id查找活动
     * @param id
     * @return
     * @throws Exception
     */
    public  Activity queryActivityById(@Param("id") int id) throws Exception;

    /**
     * 根据标题查找活动
     * @param title
     * @return
     * @throws Exception
     */
    public List<Activity> queryActivityByTitle(@Param("title") String title)throws Exception;

    /**
     * 查询所有活动列表
     * @return
     * @throws Exception
     */
    public List<Activity> listActivityAll() throws Exception;
}
