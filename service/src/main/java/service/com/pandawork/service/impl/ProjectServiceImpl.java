package com.pandawork.service.impl;

import com.pandawork.common.entity.Project;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.mapper.ProjectMapper;
import com.pandawork.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

/**
 * ProjectService的实现
 * Created by zhangh165 on 2017/10/22.
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    ProjectMapper projectMapper;

    /**
     * 添加项目
     * @param project
     * @throws SSException
     */
    @Override
    public void addProject(Project project) throws SSException {
        if (Assert.isNull(project)){
            return;
        }
        try {
            projectMapper.addProject(project);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.AddProjectFailed,e);
        }
    }

    /**
     * 删除项目
     * @param id
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delProject(int id) throws SSException {
        if (Assert.lessOrEqualZero(id)) {
            return false;
        }
        try {
            return projectMapper.delProject(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DelProjectFailed, e);
        }
    }

    /**
     * 更改项目
     * @param project
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateProject(Project project) throws SSException {
        if (Assert.isNull(project))
            return;
        try {
            projectMapper.updateProject(project);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateProjectFailed, e);
        }
    }

    /**
     * 单查项目信息
     * @param id
     * @return
     * @throws SSException
     */
    @Override
    public Project selectProject(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return null;
        }try{
            return projectMapper.selectProject(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.SelectProjectFailed,e);
        }
    }

    /**
     * 全查项目信息
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Project> listAllProject() throws SSException {
        List<Project> projectList = Collections.emptyList();
        try {
            projectList = projectMapper.listAllProject();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListAllProjectFailed, e);
        }
        return projectList;
    }
}
