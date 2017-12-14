package com.pandawork.service;

import com.pandawork.common.entity.Image;
import com.pandawork.core.common.exception.SSException;

import java.util.List;

/**
 * 图片管理系统
 * imageService层
 * Created by houst,liuz on 2017/10/19.
 * 增加图片，根据id删除图片，更新图片，
 * 根据id查询图片，查询被轮播的图片，查询图片列表
 *
 */
public interface ImageService {

    /**
     * 增加图片
     * @throws SSException 异常
     */
    public void addImage(Image image) throws SSException;

    /**
     * 根据id删除图片
     * @throws SSException 异常
     */
    public boolean delImageById(int id) throws SSException;

    /**
     * 更新图片
     * @throws SSException 异常
     */
    public void updateImage(Image image) throws SSException;

    /**
     * 根据id查询图片
     * @param id id
     * @return 返回
     * @throws SSException 异常
     */
    public Image queryImageById(int id) throws SSException;

    /**
     * 查询被轮播的图片
     * @return 返回
     * @throws SSException 异常
     */
    public List<Image> listSlImageAll() throws SSException;


    /**
     *查询图片列表
     * @return 返回
     * @throws SSException 异常
     */
    public List<Image> listImageAll() throws SSException;
}
