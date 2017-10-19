package com.pandawork.common.entity;

import com.pandawork.core.common.entity.AbstractEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 成员展示  cf
 * Created by TestUser on 2017/10/18.
 */
@Table(name = "t_member")
@Entity
public class Member extends AbstractEntity{
    //成员id
    @Id
   private Integer id;

    //成员头像
    @Column(name = "member_photo")
    private String memberPhoto;

    //成员姓名
    @Column(name = "member_name")
    private  String memberName;

    //成员性别
    private String sex;

    //成员年级
    private  int  grade;

    //成员专业
    private  String major;

    //成员部门  0代表研究生团队，1代表前端，2代表后端，3代表产品
    private  int department;

    //成员级别  0代表负责人，1代表成员
    private int position;

    //个人介绍
    private String introduce;


    //是否可见，即假性删除
    private int visible;

    public int getVisible() {
        return visible;
    }

    public void setVisible(int visible) {
        this.visible = visible;
    }


    public void setId(Integer id) {
       this.id=id;
    }

    public Integer getId() {
        return id;
    }

    public String getMemberPhoto() {
        return memberPhoto;
    }

    public void setMemberPhoto(String memberPhoto) {
        this.memberPhoto = memberPhoto;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public int getDepartment() {
        return department;
    }

    public void setDepartment(int department) {
        this.department = department;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", memberPhoto='" + memberPhoto + '\'' +
                ", memberName='" + memberName + '\'' +
                ", sex='" + sex + '\'' +
                ", grade=" + grade +
                ", major='" + major + '\'' +
                ", department=" + department +
                ", position=" + position +
                ", introduce='" + introduce + '\'' +
                ", visible=" + visible +
                '}';
    }
}
