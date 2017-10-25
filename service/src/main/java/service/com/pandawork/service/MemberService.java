package com.pandawork.service;

import com.pandawork.common.entity.Member;

import java.util.List;

/**
 * newframework
 * Created by TestUser on 2017/10/18.
 */
public interface MemberService {
    /**
     * 增加成员
     * @param member
     * @throws Exception
     */
    public void addMember(Member member) throws Exception;

    /**
     * 根据id删除成员
     * @param id
     * @return
     * @throws Exception
     */
    public boolean delMember( int id ) throws Exception;

    /**
     * 更新成员信息
     * @param member
     * @throws Exception
     */
    public void updateMember(Member member) throws Exception;

    /**
     * 根据id查找成员
     * @param id
     * @return
     * @throws Exception
     */
    public Member queryMemberById(int id) throws Exception;

    /**
     * 列出全部成员
     * @return
     * @throws Exception
     */
    public List<Member> listAll() throws Exception;

    /**
     * 根据部门查找成员   1代表研究生团队，2代表前端，3代表后端，4代表产品
     * @param department
     * @return
     * @throws Exception
     */
    public List<Member> queryMemberByDepartment (int department) throws Exception;

    /**
     * 根据级别查找成员
     * @param position
     * @return
     * @throws Exception
     */
    public List<Member> queryMemberByPosition( int position) throws Exception;

    /**
     * 根据年级查找成员
     * @param grade
     * @return
     * @throws Exception
     */
    public List<Member> queryMemberByGrade( int grade) throws Exception;


}
