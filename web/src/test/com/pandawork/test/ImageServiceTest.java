package com.pandawork.test;

import com.pandawork.common.entity.Image;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.ImageService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 图片管理系统
 * 测试service页面
 * imageService
 * Created by houst,liuz on 2016/3/26.
 */
public class ImageServiceTest extends AbstractTestCase {

    @Autowired
    ImageService imageService;

    //测试新增图片
    @Test
    public void testAddImage() throws SSException {
        Image image = new Image();
        image.setId(5);
        image.setImgName("刘喆很可爱");
        image.setSelect(1);
        imageService.addImage(image);
        System.out.println("添加成功");
    }

    //测试删除图片
    @Test
    public void testDelById() throws SSException{


    }

    //测试更新学生信息
    @Test
    public void testUpdate() throws SSException{

    }

    //测试根据ID查询学生信息
    @Test
    public void testQueryById() throws SSException {

    }

    //测试查询图片列表
    @Test
    public void testListImageAll() throws SSException{
        System.out.print(imageService.listImageAll());
    }


}
