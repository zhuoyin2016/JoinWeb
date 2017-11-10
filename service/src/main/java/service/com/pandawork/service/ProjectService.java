package com.pandawork.service;

import com.pandawork.common.entity.Project;
import com.pandawork.core.common.exception.SSException;

import java.util.List;

/**
 * projectService层
 * Created by zhangh165 on 2017/10/22.
 * 添加项目，根据id删除、查找活动，更新活动，全查活动
 */
public interface ProjectService {
    /**
     * 添加项目
     * @throws SSException
     */
    public void addProject(Project project) throws SSException;

    /**
     * 根据id删除项目
     * @throws SSException
     */
    public boolean delProject(int id) throws SSException;

    /**
     * 更改项目
     * @throws SSException
     */
    public void updateProject(Project project) throws SSException;

    /**
     * 根据id查询项目信息
     * @throws SSException
     */
    public Project selectProject(int id) throws SSException;

    /**
     * 全查项目
     * @throws SSException
     */
    public List<Project> listAllProject() throws SSException;
}
