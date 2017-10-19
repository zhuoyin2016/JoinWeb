package com.pandawork.service.impl;

import com.pandawork.common.entity.Member;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.mapper.MemberMapper;
import com.pandawork.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import java.util.Collections;
import java.util.List;

import static com.pandawork.core.common.util.Assert.isNull;
import static com.pandawork.core.common.util.Assert.lessOrEqualZero;

/**
 * newframework
 * Created by TestUser on 2017/10/18.
 */
@Service("memberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    protected CommonDao commonDao;

    /**
     * 增加成员
     * @param member
     * @throws Exception
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor ={SSException.class, Exception.class, RuntimeException.class} )
    public void addMember(Member member) throws Exception {
        if (isNull(member)) {
            return;
        }
        try {
            memberMapper.addMember(member);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.AddMember,e);
        }
    }

    /**
     * 删除成员
     * @param id
     * @return
     * @throws Exception
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delMember(int id) throws Exception {
        if (lessOrEqualZero(id)) {
            return false;
        }
        try {
            return memberMapper.delMember(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DeleteMember, e);
        }
    }

    /**
     * 更新成员信息
     * @param member
     * @throws Exception
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateMember(Member member) throws Exception {
        if (isNull(member))
            return;
        try {
          memberMapper.updateMember(member);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateMember, e);
        }
    }

    /**
     * 根据id查找用户
     * @param id
     * @return
     * @throws Exception
     */
    @Override
    public Member queryMemberById(int id) throws Exception {
        if (Assert.lessOrEqualZero(id)) {
            return null;
        }
        try {
            return memberMapper.queryMemberById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryMemberById, e);
        }
    }

    /**
     * 便利全部
     * @return
     * @throws Exception
     */
    @Override
    public List<Member> listAll() throws Exception {
        List<Member> memberList = Collections.emptyList();
        try {
            memberList = memberMapper.listAll();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListAllMember, e);
        }
        return memberList;
    }

    /**
     * 根据部门查找用户
     * @param department
     * @return
     * @throws Exception
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Member> queryMemberByDepartment(int department) throws Exception {
     if(Assert.isNull(department)){
         return null;
     }try{
            return memberMapper.queryMemberByDepartment(department);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryMemberByDepartment,e);
        }
    }

    /**
     * 根据职位查找用户
     * @param position
     * @return
     * @throws Exception
     */
    @Override
    public List<Member> queryMemberByPosition(int position) throws Exception {
        if(Assert.isNull(position)){
            return null;
        }try{
            return memberMapper.queryMemberByPosition(position);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryMemberByPosition,e);
        }
    }

    /**
     * 根据年级查找用户
     * @param grade
     * @return
     * @throws Exception
     */
    @Override
    public List<Member> queryMemberByGrade(int grade) throws Exception {
        if(Assert.isNull(grade)){
            return null;
        }try{
            return memberMapper.queryMemberByGrade(grade);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryMemberByGrade,e);
        }
    }
}
