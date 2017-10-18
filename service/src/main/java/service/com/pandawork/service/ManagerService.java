package com.pandawork.service;

import com.pandawork.common.entity.Manager;
import com.pandawork.core.common.exception.SSException;

import java.util.List;

/**
 * Created by wangh on 2017/10/18.
 */
public interface ManagerService {

    /**
     * 增加管理员
     *
     * @param manager
     * @throws Exception
     */
    public void addManager(Manager manager) throws SSException;


    /**
     * 根据id删除管理员
     *
     * @param id
     * @return boolean
     * @throws Exception
     */
    public boolean deleteManager(int id) throws SSException;


    /**
     * 修改管理员
     *
     * @param manager
     * @throws Exception
     */
    public void updateManager(Manager manager) throws SSException;


    /**
     * 列出全部管理员
     *
     * @return
     * @throws Exception
     */
    public List<Manager> listAll() throws SSException;


    /**
     * 根据id查找管理员
     *
     * @param id
     * @return
     * @throws Exception
     */
    public Manager queryManagerById(int id) throws SSException;


    /**
     * 根据用户名查找管理员
     *
     * @param username
     * @return
     * @throws Exception
     */
    public List<Manager> queryManagerByName(String username) throws SSException;

}