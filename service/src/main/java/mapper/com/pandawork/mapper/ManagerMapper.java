package com.pandawork.mapper;

import com.pandawork.common.entity.Manager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by wangh on 2017/10/18.
 */
public interface ManagerMapper {

    /**
     * 增加管理员
     * @param manager
     * @throws Exception
     */
    public void addManager (@Param("manager") Manager manager) throws Exception;


    /**
     * 根据id删除管理员
     * @param id
     * @return boolean
     * @throws Exception
     */
    public boolean deleteManager(@Param("id") int id)throws Exception;


    /**
     * 修改管理员
     * @param manager
     * @throws Exception
     */
    public void updateManager(@Param("manager") Manager manager)throws Exception;


    /**
     * 列出全部管理员
     * @return
     * @throws Exception
     */
    public List<Manager> listAll() throws Exception;


    /**
     * 根据id查找管理员
     * @param id
     * @return
     * @throws Exception
     */
    public  Manager queryManagerById(@Param("id") int id) throws Exception;


    /**
     * 根据用户名查找管理员
     * @param username
     * @return
     * @throws Exception
     */
    public List<Manager> queryManagerByName(@Param("username") String username)throws Exception;


}