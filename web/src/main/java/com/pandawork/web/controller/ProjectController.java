package com.pandawork.web.controller;

import com.pandawork.common.entity.Project;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.web.spring.AbstractController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/**
 * Created by 联想 on 2017/10/28.
 */
@Controller
@RequestMapping("/project")
public class ProjectController extends AbstractController {

    /**
     * 创建一个项目展示
     */
    @RequestMapping(value = "/addProject",method = RequestMethod.POST)
    public String addProject(Project project, @RequestParam("file") CommonsMultipartFile file, RedirectAttributes redirectAttributes, HttpServletRequest request){
        String  filename = file.getOriginalFilename();
        String newFileName =  UUID.randomUUID()+ filename;
        ServletContext sc = request.getSession().getServletContext();
        String path = sc.getRealPath("image/projectImage")+"/";
        File f = new File(path);
        if(!f.exists()){
            f.mkdirs();
        }
//        ||Assert.isNotNull(project.getContent())||Assert.isNotNull(project.getDate())||Assert.isNotNull(project.getName())||Assert.isNotNull(project.getNotes())
//        if(Assert.isNotNull(project.getImage())) {
//            redirectAttributes.addAttribute("message", "请填入完整信息！");
//            return "redirect:/project/addProject";
//        }
//        else {
            try {
                FileOutputStream fos = new FileOutputStream(path + newFileName);
                InputStream in = file.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) {
                    fos.write(b);
                }
                fos.close();
                in.close();
                project.setImage(newFileName);
                projectService.addProject(project);
                return "redirect:/project/listAllProject";
                } catch(Exception e){
                    e.printStackTrace();
                    return ADMIN_SYS_ERR_PAGE;
                }
//            }
    }

    /**
     * 删除一个项目展示
     */
    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public String delProject(@PathVariable("id") int id){
        try{
            projectService.delProject(id);
            return "redirect:/project/listAllProject";
        }catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }catch (Exception e){
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }

    }
    /**
     * 修改一个项目
     */
    @RequestMapping(value = "/update/{projectId}",method = RequestMethod.POST)
    public String updateProject(Project project, @PathVariable("projectId")int projectId){
        if(!Assert.isNotNull(project))return null;
        else {
            try {
                projectService.updateProject(project);
                return "redirect:project/listAllProject";
            }catch (SSException e){
                LogClerk.errLog.error(e);
                sendErrMsg(e.getMessage());
                return ADMIN_SYS_ERR_PAGE;
            }catch (Exception e){
                e.printStackTrace();
                return ADMIN_SYS_ERR_PAGE;
            }
        }
    }

    /**
     * 展示一个项目
     */
    @RequestMapping(value = "/select/{projectId}",method = RequestMethod.GET)
    public String selectProject(@PathVariable("projectId")int projectId,Model model){
            try{
                Project project = projectService.selectProject(projectId);
                model.addAttribute("project",project);
                return "project/index-project-select";
            }catch (SSException e){
                LogClerk.errLog.error(e);
                sendErrMsg(e.getMessage());
                return ADMIN_SYS_ERR_PAGE;
            }catch (Exception e){
                e.printStackTrace();
                return ADMIN_SYS_ERR_PAGE;
            }
        }

    /**
     * 查询所有的项目
     */
    @RequestMapping(value = "/listAllProject",method = RequestMethod.GET)
    public String listAllProject(Model model){
        try{
            List<Project> list = Collections.emptyList();
            list = projectService.listAllProject();
            model.addAttribute("projectList",list);
            return "project/index-project";
        }catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }catch (Exception e){
            e.printStackTrace();
            return ADMIN_SYS_ERR_PAGE;
        }
    }
    /**
     * 跳转至add页面
     */
    @RequestMapping(value = "/toAdd",method = RequestMethod.GET)
    public String toAdd(){
        return "project/index-project-add";
    }
    /**
     * 返回列出全部
     */
    @RequestMapping(value = "/tolistAll",method = RequestMethod.GET)
    public String tolistAll(){
        return "redirect:/project/listAllProject";
    }
}
