package com.pandawork.mapper;

import com.pandawork.common.entity.Member;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * newframework
 * Created by TestUser on 2017/10/18.
 */
public interface MemberMapper {

    /**
     * 增加成员
     * @param member
     * @throws Exception
     */
     public void addMember(@Param("member")Member member) throws Exception;

    /**
     * 根据id删除成员
     * @param id
     * @return
     * @throws Exception
     */
    public boolean delMember(@Param("id" ) int id ) throws Exception;

    /**
     * 更新成员信息
     * @throws Exception
     */
    public void updateMember(@Param("member") Member member) throws Exception;

    /**
     * 根据id查找成员
     * @param id
     * @return
     * @throws Exception
     */
    public Member queryMemberById(@Param("id") int id) throws Exception;

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
    public List<Member> queryMemberByDepartment (@Param("department") int department) throws Exception;

    /**
     * 根据级别查找成员
     * @param position
     * @return
     * @throws Exception
     */
    public List<Member> queryMemberByPosition(@Param("position") int position) throws Exception;

    /**
     * 根据年级查找成员
     * @param grade
     * @return
     * @throws Exception
     */
    public List<Member> queryMemberByGrade(@Param("grade") int grade) throws Exception;


}
