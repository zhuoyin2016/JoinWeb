package com.pandawork.mapper;

import  com.pandawork.common.entity.Joiner;
import org.apache.ibatis.annotations.Param;

import javax.persistence.Id;
import java.util.List;
/**
 * Created by 芋头 on 2017/10/19.
 */
public interface JoinerMapper {

    /**
     * 添加报名学生
     * @param joiner
     * @throws Exception
     */
    public void addJoiner (@Param("joiner") Joiner joiner) throws Exception;

    /**
     * 删除报名学生信息
     * @param id
     * @return
     * @throws Exception
     */
    public boolean delJoiner(@Param("id")int id ) throws Exception;

    /**
     * 修改报名学生信息
     * @param joiner
     * @throws Exception
     */
    public void updateJoiner(@Param("joiner") Joiner joiner) throws Exception;

    /**
     * 遍历所有报名学生
     * @return
     * @throws Exception
     */
    public List<Joiner> listAllJoiner() throws Exception;

    /**
     * 通过id查找报名学生
     * @param id
     * @return
     * @throws Exception
     */
    public Joiner queryJoinerById(@Param("id") int id) throws Exception;

    /**
     * 通过性别查找
     * @param sex
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerBySex(@Param("sex") String sex)throws Exception;

    /**
     * 通过专业查找
     * @param major
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByMajor(@Param("major") String major)throws Exception;

    /**
     * 通过年级查找
     * @param grade
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByGrade(@Param("grade") String grade)throws Exception;

    /**
     * 通过状态查找
     * @param state
     * @return
     * @throws Exception
     */
    public List<Joiner> queryJoinerByState(@Param("state") String state)throws Exception;
}
