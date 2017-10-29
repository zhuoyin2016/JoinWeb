package com.pandawork.mapper;

import  com.pandawork.common.entity.Joiner;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import javax.persistence.Id;
import java.util.List;
/**
 * Created by 芋头 on 2017/10/19.
 */
public interface JoinerMapper {

    /**
     * 添加报名学生
     *
     * @param joiner
     * @throws Exception
     */
    public void addJoiner(@Param("joiner") Joiner joiner) throws Exception;

    /**
     * 删除报名学生信息
     *
     * @param id
     * @return
     * @throws Exception
     */
    public boolean delJoiner(@Param("id") int id) throws Exception;

    /**
     * 修改报名学生信息
     *
     * @param joiner
     * @throws Exception
     */
    public void updateJoiner(@Param("joiner") Joiner joiner) throws Exception;

    /**
     * 遍历所有报名学生
     *
     * @return
     * @throws Exception
     */
    public List<Joiner> listAllJoiner() throws Exception;

    /**
     * 通过id查找报名学生
     *
     * @param id
     * @return
     * @throws Exception
     */
    public Joiner queryJoinerById(@Param("id") int id) throws Exception;

    /**
     * 通过性别查找
     *
     * @param sex
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerBySex(@Param("sex") String sex) throws Exception;

    /**
     * 通过专业查找
     *
     * @param major
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByMajor(@Param("major") String major) throws Exception;

    /**
     * 通过年级查找
     *
     * @param joinerGrade
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByGrade(@Param("joinerGrade") String joinerGrade) throws Exception;

    /**
     * 通过状态查找
     *
     * @param state
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByState(@Param("state") int state) throws Exception;

    /**
     * 审核
     *
     * @param state
     * @throws Exception
     */
    public void updateState(@Param("state") int state, @Param("id") int id) throws Exception;

    /**
     * 通过姓名查找
     * @param name
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByName(@Param("name")String name) throws Exception;

    /**
     * 根据意向部门查找
     * @param department
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByDep(@Param("department")String department) throws Exception;
}
