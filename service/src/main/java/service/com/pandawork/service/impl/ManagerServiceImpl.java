package com.pandawork.service.impl;

import com.pandawork.common.entity.Manager;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.mapper.ManagerMapper;
import com.pandawork.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

/**
 * Created by wangh on 2017/10/18.
 */
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    ManagerMapper managerMapper;
    @Autowired
    protected CommonDao commonDao;


    /**
     * 增加管理员
     * @param manager
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void addManager(Manager manager) throws SSException {
        if(Assert.isNull(manager)){
            return;
        }
        try{
            managerMapper.addManager(manager);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.AddManager, e);
        }

    }

    /**
     * 根据id删除管理员
     * @param id
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean deleteManager(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return false;
        }try{
            return managerMapper.deleteManager(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DeleteManager, e);
        }
    }

    /**
     * 修改管理员
     * @param manager
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateManager(Manager manager) throws SSException {
        if(Assert.isNull(manager)){
            return;
        }try{
            managerMapper.updateManager(manager);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateManager, e);
        }

    }


    /**
     * 列出全部管理员
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Manager> listAll() throws SSException {
        List<Manager> userList = Collections.emptyList();
        try{
            userList = managerMapper.listAll();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListAllManager,e);
        }
        return userList;
    }


    /**
     * 根据id查找管理员
     * @param id
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public Manager queryManagerById(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return null;
        }try{
            return managerMapper.queryManagerById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryManagerById,e);
        }
    }


    /**
     * 根据用户名查找管理员
     * @param username
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Manager> queryManagerByName(String username) throws SSException {
        if(Assert.isNull(username)){
            return null;
        }try{
            return managerMapper.queryManagerByName(username);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListAllManager,e);
        }
    }
}
