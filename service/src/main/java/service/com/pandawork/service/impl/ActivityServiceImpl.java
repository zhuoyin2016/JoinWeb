package com.pandawork.service.impl;

import com.pandawork.common.entity.Activity;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.mapper.ActivityMapper;
import com.pandawork.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

/**
 * ActivityService的实现
 * Created by Zhangx,liuz on 2016/10/21.
 */

@Service("activityService")
public class ActivityServiceImpl implements ActivityService {

    @Autowired
    ActivityMapper activityMapper;

    /**
     * 增加活动
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void addActivity(Activity activity) throws SSException{
        if(Assert.isNull(activity)){
            return;
        }
        try{
            activityMapper.addActivity(activity);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.AddActivityFailed, e);
        }
    }

    /**
     * 根据id删除活动
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delActivityById(int id) throws SSException{
        if (Assert.lessOrEqualZero(id)) {
            return false;
        }
        try {
            return activityMapper.delActivityById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DelActivityByIdFailed, e);
        }
    }

    /**
     * 更新活动
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateActivity(Activity activity) throws SSException{
        if (Assert.isNull(activity))
            return;
        try {
            activityMapper.updateActivity(activity);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateActivityFailed, e);
        }
    }

    /**
     * 根据id查询活动
     * @param id id
     * @return 返回活动
     * @throws SSException 异常
     */
    @Override
    public Activity queryActivityById(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return null;
        }try{
            return activityMapper.queryActivityById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.queryActivityByIdFailed,e);
        }
    }

    /**
     *查询活动列表
     * @return 返回
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Activity> listActivityAll() throws SSException {
        List<Activity> activityList = Collections.emptyList();
        try {
            activityList = activityMapper.listActivityAll();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListActivityAllFailed, e);
        }
        return activityList;
    }
}
