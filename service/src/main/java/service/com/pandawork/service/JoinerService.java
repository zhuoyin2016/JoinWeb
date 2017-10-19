package com.pandawork.service;

import com.pandawork.common.entity.Joiner;
import com.pandawork.core.common.exception.SSException;

import java.util.List;
/**
 * Created by 芋头 on 2017/10/19.
 */
public interface JoinerService {

    /**
     * 添加报名学生
     * @param joiner
     * @throws SSException
     */
    public void addJoiner (Joiner joiner) throws SSException;

    /**
     * 删除报名学生信息
     * @param id
     * @return
     * @throws SSException
     */
    public boolean delJoiner(int id ) throws SSException;

    /**
     * 更新报名学生信息
     * @param joiner
     * @throws SSException
     */
    public void updateJoiner(Joiner joiner) throws SSException;

    /**
     * 遍历所有学生
     * @return
     * @throws SSException
     */
    public List<Joiner> listAllJoiner() throws SSException;

    /**
     * 根据id查找
     * @param id
     * @return
     * @throws SSException
     */
    public Joiner queryJoinerById(int id) throws SSException;

    /**
     * 根据性别查找
     * @param sex
     * @return
     * @throws SSException
     */
    public List<Joiner> queryJoinerBySex(String sex)throws SSException;

    /**
     * 根据专业查找
     * @param major
     * @return
     * @throws SSException
     */
    public List<Joiner> queryJoinerByMajor(String major)throws SSException;

    /**
     * 根据年级查找
     * @param grade
     * @return
     * @throws SSException
     */
    public List<Joiner> queryJoinerByGrade(String grade)throws SSException;

    /**
     * 根据状态查找
     * @param state
     * @return
     * @throws SSException
     */
    public List<Joiner> queryJoinerByState(String state)throws SSException;
}
