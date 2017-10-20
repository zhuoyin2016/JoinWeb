package com.pandawork.test;

import com.pandawork.common.entity.Manager;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.ManagerService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by wangh on 2017/10/18
 */
public class ManagerServiceTest extends AbstractTestCase {
    @Autowired
    ManagerService managerService;

    /**
     * 测试增加管理员
     */
    @Test
    public void addManagerTest() throws SSException {
        Manager manager = new Manager();
        manager.setUsername("张航");
        manager.setPassword("admin");
        manager.setStatus(0);
        managerService.addManager(manager);
        System.out.println("添加成功");
    }

    /**
     * 删除管理员
     * @throws SSException
     */
    @Test
    public void deleteUserTest()throws SSException{
        managerService.deleteManager(1);
        System.out.println("删除成功");
    }

    /**
     * 测试修改管理员
     * @throws SSException
     */
    @Test
    public void updateManagerTest()throws SSException{
        Manager manager = new Manager();
        manager.setUsername("啦啦啦");
        manager.setPassword("admin");
        manager.setStatus(1);
        manager.setId(3);
        managerService.updateManager(manager);
    }

    /**
     * 列出全部管理员
     * @throws SSException
     */
    @Test
    public void listAllTest() throws SSException {
        System.out.println(managerService.listAll());
    }

    /**
     * 通过id查找管理员
     * @throws SSException
     */
    @Test
    public void queryByIdTest() throws SSException {
        System.out.println(managerService.queryManagerById(2));
    }

    /**
     * 通过姓名查找管理员
     * @throws SSException
     */
    @Test
    public  void queryByName()throws SSException{
        System.out.println(managerService.queryManagerByName("柯"));
    }
}

