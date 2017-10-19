package com.pandawork.service.impl;

import com.pandawork.common.entity.Image;
import com.pandawork.common.entity.Student;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
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
 * Created by houst,liuz on 2016/3/28.
 */
@Service("ImageService")
public class ImageServicelmpl implements ImageService {

    @Autowired
    ImageMapper imageMapper;

    @Autowired
    protected CommonDao commonDao;

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
            throw SSException.get(NFException.AddImage, e);
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
            throw SSException.get(NFException.DelImageById, e);
        }
    }

    /**
     * 更新图片
     * @throws SSException 异常
     */
    @Override
    public void updateImage(Image image) throws SSException{

    }

    /**
     * 根据id查询图片
     * @param id id
     * @return 返回
     * @throws Exception 异常
     */
    @Override
    public Student queryImageById(int id) throws SSException{

    }

    /**
     *查询图片列表
     * @return 返回
     * @throws SSException 异常
     */
    @Override
    public List<Image> listAll() throws SSException{

    }

}
