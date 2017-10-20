package com.pandawork.common.entity;

import com.pandawork.core.common.entity.AbstractEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * images实体
 * Created by houst,liuz on 2017/10/19.
 *
 */
@Table(name = "t_images")
@Entity
public class Image extends AbstractEntity {
    //图片ID
    @Id
    public Integer id;

    //图片名称
    @Column(name = "img_name")
    private String  imgName;

    //图片上传时间
    @Column(name = "upload_img_time")
    private String uploadImgTime;

    //图片是否被选中
    @Column(name = "select")
    private Integer select;

    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgName() {
        return imgName;
    }

    public void setImgName(String imgName) {
        this.imgName = imgName;
    }

    public String getUploadImgTime() {
        return uploadImgTime;
    }

    public void setUploadImgTime(String uploadImgTime) {
        this.uploadImgTime = uploadImgTime;
    }

    public Integer getSelect() {
        return select;
    }

    public void setSelect(Integer select) {
        this.select = select;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", imgName='" + imgName + '\'' +
                ", uploadImgTime='" + uploadImgTime + '\'' +
                ", select=" + select +
                '}';
    }
}
