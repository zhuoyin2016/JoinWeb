package com.pandawork.test;

import com.pandawork.common.entity.Image;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.ImageService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 图片管理系统
 * 测试service页面
 * imageService 。。。
 * Created by houst,liuz on 2016/3/26.
 */

public class ImagesServiceTest extends AbstractTestCase {

    @Autowired
    ImageService imageService;

    //测试新增图片
    @Test
    public void testAddImage() throws SSException {
        Image image = new Image();
        image.setId(0);
        image.setImgName("哇");
        image.setSelect(0);
        imageService.addImage(image);
        System.out.println("添加成功");
    }

    //测试删除图片
    @Test
    public void testDelById() throws SSException{
        imageService.delImageById(2);
        System.out.println("删除成功");

    }

    //测试更新图片
    @Test
    public void testUpdate() throws SSException{
        Image image = imageService.queryImageById(3);
        image.setSelect(0);
        imageService.updateImage(image);
        System.out.println("更新成功");

    }

    //测试根据ID查询图片
    @Test
    public void testQueryById() throws SSException {
        Image image = imageService.queryImageById(3);
        System.out.println(image.getImgName());
        System.out.println(image.getUploadImgTime());
    }

    //测试查询图片列表
    @Test
    public void testListImageAll() throws SSException{
        System.out.print(imageService.listImageAll());
    }


}
