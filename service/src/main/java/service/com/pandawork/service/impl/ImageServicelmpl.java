package com.pandawork.service.impl;

import com.pandawork.common.entity.Image;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.mapper.ImageMapper;
import com.pandawork.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

/**
 * ImageService的实现
 * Created by houst,liuz on 2016/10/19.
 */
@Service("imageService")
public class ImageServicelmpl implements ImageService {

    @Autowired
    ImageMapper imageMapper;


    /**
     * 增加图片
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void addImage(Image image) throws SSException{
        if(Assert.isNull(image)){
            return;
        }
        try{
            imageMapper.addImage(image);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.AddImageFailed, e);
        }
    }

    /**
     * 根据id删除图片
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delImageById(int id) throws SSException{
        if (Assert.lessOrEqualZero(id)) {
            return false;
        }
        try {
            return imageMapper.delImageById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DelImageByIdFailed, e);
        }
    }

    /**
     * 更新图片
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateImage(Image image) throws SSException{
        if (Assert.isNull(image))
            return;
        try {
            imageMapper.updateImage(image);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateImageFailed, e);
        }
    }

    /**
     * 根据id查询图片
     * @param id id
     * @return 返回
     * @throws SSException 异常
     */
    @Override
    public Image queryImageById(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return null;
        }try{
            return imageMapper.queryImageById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.queryImageByIdFailed,e);
        }
    }

    /**
     *查询图片列表
     * @return 返回
     * @throws SSException 异常
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Image> listImageAll() throws SSException {
            List<Image> imageList = Collections.emptyList();
            try {
                imageList = imageMapper.listImageAll();
            } catch (Exception e) {
                LogClerk.errLog.error(e);
                throw SSException.get(NFException.ListImageAllFailed, e);
            }
            return imageList;
    }


}
