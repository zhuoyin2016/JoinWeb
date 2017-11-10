package com.pandawork.mapper;

import com.pandawork.common.entity.Project;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 项目展示管理mapper层
 * Created by zhangh165 on 2017/10/22.
 */
public interface ProjectMapper {

    /**
     * 添加项目展示
     * @param project
     * @throws Exception
     */
    public void addProject(@Param("project") Project project) throws Exception;

    /**
     * 根据ID删除项目展示
     * @param id
     * @throws Exception
     */
    public boolean delProject(@Param("id") int id)throws Exception;

    /**
     * 更新/修改项目
     * @param project
     * @throws Exception
     */
    public void updateProject(@Param("project") Project project) throws Exception;

    /**
     * 根据id查询单个项目
     * @param id
     * @return project
     * @throws Exception
     */
    public Project selectProject(@Param("id") int id) throws Exception;

    /**
     * 全查项目
     * @return list<project>
     * @throws Exception
     */
    public List<Project> listAllProject() throws Exception;


}
