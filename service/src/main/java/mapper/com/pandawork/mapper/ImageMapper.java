package com.pandawork.mapper;

import com.pandawork.common.entity.Image;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 轮播图片管理mapper层
 * Created by houst,liuz on 2017/10/19.
 *增加图片，删除图片，修改图片，根据id查询图片，查询被轮播的图片，查询图片列表
 *
 */
public interface ImageMapper {

    /**
     * 增加图片
     * @param image 图片
     * @throws Exception 异常
     */
    public void addImage(@Param("image") Image image) throws Exception;

    /**
     *根据id删除图片
     * @param id id
     * @throws Exception 异常
     */
    public boolean delImageById(@Param("id") int id) throws Exception;

    /**
     * 修改图片
     * @param image 图片
     * @throws Exception 异常
     */
    public void updateImage(@Param("image") Image image) throws Exception;

    /**
     * 根据id查找图片
     * @param id id
     * @return 返回
     * @throws Exception 异常
     */
    public  Image queryImageById(@Param("id") int id) throws Exception;

    /**
     * 查询被轮播的图片
     * @return 返回
     * @throws Exception 异常
     */
    public List<Image> listSlImageAll()throws Exception;

    /**
     * 查询所有图片列表
     * @return 返回
     * @throws Exception 异常
     */
    public List<Image> listImageAll() throws Exception;
}

