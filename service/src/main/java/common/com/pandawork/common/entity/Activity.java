package com.pandawork.common.entity;

import com.pandawork.core.common.entity.AbstractEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * activity实体
 * Created by Zhangx,Liuz on 2017/10/21.
 *
 */
@Table(name = "t_activity")
@Entity
public class Activity extends AbstractEntity{
    //活动ID
    @Id
    public Integer id;

    //活动标题
    @Column(name = "activity_title")
    private String  actTitle;

    //活动内容
    @Column(name = "activity_content")
    private String actContent;

    //活动图片1
    @Column(name = "activity_image1")
    private String actImage1;

    //活动图片2
    @Column(name = "activity_image2")
    private String actImage2;

    //活动图片3
    @Column(name = "activity_image3")
    private String actImage3;

    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public String getActTitle() {
        return actTitle;
    }

    public void setActTitle(String actTitle) {
        this.actTitle = actTitle;
    }

    public String getActContent() {
        return actContent;
    }

    public void setActContent(String actContent) {
        this.actContent = actContent;
    }

    public String getActImage1() {
        return actImage1;
    }

    public void setActImage1(String actImage1) {
        this.actImage1 = actImage1;
    }

    public String getActImage2() {
        return actImage2;
    }

    public void setActImage2(String actImage2) {
        this.actImage2 = actImage2;
    }

    public String getActImage3() {
        return actImage3;
    }

    public void setActImage3(String actImage3) {
        this.actImage3 = actImage3;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", actTitle='" + actTitle + '\'' +
                ", actContent='" + actContent + '\'' +
                ", actImage1='" + actImage1 + '\'' +
                ", actImage2='" + actImage2 + '\'' +
                ", actImage3='" + actImage3 + '\'' +
                '}';
    }
}
