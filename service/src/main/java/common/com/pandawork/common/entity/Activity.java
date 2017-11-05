package com.pandawork.common.entity;
import com.pandawork.core.common.entity.AbstractEntity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * Created by zx on 2017/10/19.
 */
@Table(name = "t_activity")
@Entity
public class Activity extends AbstractEntity {

    //活动id
    @Id
    public Integer id;

    //活动时间
    @Column(name = "activity_time")
    private String activityTime;

    //活动标题
    @Column(name = "activity_title")
    private String activityTitle;

    //活动内容
    @Column(name = "activity_content")
    private String activityContent;

    //活动图片1
    @Column(name = "activity_image1")
    private String activityImg1;

    //活动图片2
    @Column(name = "activity_image2")
    private String activityImg2;

    //活动图片3
    @Column(name = "activity_image3")
    private String activityImg3;

    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public void setActivityTime(String activityTime) {
        this.activityTime = activityTime;
    }

    public String getActivityTime() {
        return activityTime;
    }


    public String getActivityTitle() {
        return activityTitle;
    }

    public void setActivityTitle(String activityTitle) {
        this.activityTitle = activityTitle;
    }

    public String getActivityContent() {
        return activityContent;
    }

    public void setActivityContent(String activityContent) {
        this.activityContent = activityContent;
    }

    public String getActivityImg1() {
        return activityImg1;
    }

    public void setActivityImg1(String activityImg1) {
        this.activityImg1 = activityImg1;
    }

    public String getActivityImg2() {
        return activityImg2;
    }

    public void setActivityImg2(String activityImg2) {
        this.activityImg2 = activityImg2;
    }

    public String getActivityImg3() {
        return activityImg3;
    }

    public void setActivityImg3(String activityImg3) {
        this.activityImg3 = activityImg3;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", activityTime='" + activityTime + '\'' +
                ", activityTitle='" + activityTitle + '\'' +
                ", activityContent='" + activityContent + '\'' +
                ", activityImg1='" + activityImg1 + '\'' +
                ", activityImg2='" + activityImg2 + '\'' +
                ", activityImg3='" + activityImg3 + '\'' +
                '}';
    }
}