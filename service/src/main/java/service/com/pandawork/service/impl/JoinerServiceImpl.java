package com.pandawork.service.impl;

import com.pandawork.service.JoinerService;
import org.springframework.stereotype.Service;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.common.entity.Joiner;
import com.pandawork.mapper.JoinerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
/**
 * Created by 芋头 on 2017/10/19.
 */
@Service("JoinerService")
public class JoinerServiceImpl implements JoinerService {
    @Autowired
    JoinerMapper joinerMapper;
    @Autowired
    protected CommonDao commonDao;

    /**
     *增加报名学生信息
     * @param joiner
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void addJoiner(Joiner joiner) throws SSException {
        if(Assert.isNull(joiner)){
            return;
        }
        try{
            joinerMapper.addJoiner(joiner);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.AddJoinerFailed, e);
        }

    }

    /**
     *删除报名学生
     * @param id
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delJoiner(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return false;
        }try{
            return joinerMapper.delJoiner(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DeleteJoinerFailed, e);
        }
    }

    /**
     *修改报名学生
     * @param joiner
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateJoiner(Joiner joiner) throws SSException {
        if(Assert.isNull(joiner)){
            return;
        }try{
            joinerMapper.updateJoiner(joiner);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateJoinerFailed, e);
        }

    }

    /**
     *遍历所有报名学生
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Joiner> listAllJoiner() throws SSException {
        List<Joiner> joinerList = Collections.emptyList();
        try{
            joinerList = joinerMapper.listAllJoiner();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListAlljoinerFailed,e);
        }
        return joinerList;
    }

    /**
     *根据id查找报名学生
     * @param id
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public Joiner queryJoinerById(int id) throws SSException {
        if(Assert.lessOrEqualZero(id)){
            return null;
        }try{
            return joinerMapper.queryJoinerById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryJoinerFailed,e);
        }
    }

    /**
     *根据性别查找报名学生
     * @param sex
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Joiner>  queryJoinerBySex(String sex) throws SSException {
        if(Assert.isNull(sex)){
            return null;
        }try{
            return joinerMapper.queryJoinerBySex(sex);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryJoinerFailed,e);
        }
    }

    /**
     *根据专业查找报名学生
     * @param major
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Joiner>  queryJoinerByMajor(String major) throws SSException {
        if(Assert.isNull(major)){
            return null;
        }try{
            return joinerMapper.queryJoinerByMajor(major);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryJoinerFailed,e);
        }
    }

    /**
     * 根据年级查找报名学生
     * @param grade
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Joiner>  queryJoinerByGrade(String grade) throws SSException {
        if(Assert.isNull(grade)){
            return null;
        }try{
            return joinerMapper.queryJoinerByGrade(grade);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryJoinerFailed,e);
        }
    }

    /**
     * 根据状态查找报名学生
     * @param state
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Joiner> queryJoinerByState(String state) throws SSException {
        if(Assert.isNull(state)){
            return null;
        }try{
            return joinerMapper.queryJoinerByState(state);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryJoinerFailed,e);
        }
    }

}
