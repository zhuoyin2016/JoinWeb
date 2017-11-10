package com.pandawork.common.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 项目展示 实体
 * Created by zhangh165 on 2017/10/22.
 */
@Table(name = "t_project")
@Entity
public class Project {
    //项目id
    @Id
    private Integer id;

    //项目名称
    @Column(name = "project_title")
    private String name;

    //项目介绍
    @Column(name = "project_content")
    private String content;

    //项目图片
    @Column(name = "project_image")
    private String image;

    //项目时间
    @Column(name = "project_date")
    private String date;

    //项目注释
    @Column(name = "project_notes")
    private String notes;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", content='" + content + '\'' +
                ", image='" + image + '\'' +
                ", date='" + date + '\'' +
                ", notes='" + notes + '\'' +
                '}';
    }
}
