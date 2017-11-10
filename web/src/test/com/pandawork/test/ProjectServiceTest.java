package com.pandawork.test;

import com.pandawork.common.entity.Project;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.ProjectService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by 联想 on 2017/11/9.
 */
public class ProjectServiceTest extends com.pandawork.test.AbstractTestCase{
    @Autowired
    ProjectService projectService;

    @Test
    public void testaddProject()throws SSException{
        Project project = new Project();
        project.setContent("豆子");
        project.setImage("project");
        project.setDate("20160101");
        project.setName("project");
        project.setNotes("project");
        projectService.addProject(project);
        System.out.println("11");
    }

    @Test
    public void testdelProject()throws SSException{
        projectService.delProject(4);
        System.out.println("11");
    }

    @Test
    public void testselectProject() throws SSException{
        Project project = projectService.selectProject(5);
        System.out.println(project.toString());
        System.out.println("11");
    }


    @Test
    public void testupdateProject() throws SSException{
        Project project = new Project();
        project.setId(1);
        project.setContent("project");
        project.setImage("project");
        project.setName("project");
        project.setNotes("project");
        projectService.updateProject(project);
        Project project1 = projectService.selectProject(1);
        System.out.println(project1.toString());

    }
    @Test
    public void testlistAllProject() throws SSException{
        List<Project> list = projectService.listAllProject();
        System.out.println(list.toString());
    }
}
