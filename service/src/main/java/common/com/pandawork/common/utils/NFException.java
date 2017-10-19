package com.pandawork.common.utils;

import com.pandawork.core.common.exception.IBizExceptionMes;

/**
 * NFException
 *
 * @author: zhangteng
 * @time: 2015/3/24 16:55
 */
public enum  NFException implements IBizExceptionMes {
    SystemException("系统内部异常", 1),

    UserNameNotNull("用户名不能为空", 10001),
    PasswordNotNull("密码不能为空", 10002),
    ListStudentAll("获取学生列表失败",10003),
    CountAll("获取学生信息数目失败",10004 ),
    StudentNameNotNull("获取学生姓名为空",10005 ),
    StudentNumLessOrEqualZero("学生学号小于零",10006 ),
    SexNotNull( "获取学生性别为空",10007),
    GradeLessOrEqualZero("获取学生年级小于零",10008),
    ClassNumLessOrEqualZero("获取学生年级小于零",10009),
    CollegeNotNull("获取学生学院为空",10010),
    BirthdayNotNull("获取学生生日为空",10011),
    GoodStudentNotNull("获取是否为好学生为空",10012),
    DelStudentNull("删除学生信息失败",10013),
    UpdateStudentFailed("更新学生信息失败",10014),
    UpdateStudentByIdFailed("按照id查询学生信息失败",10016),
    QueryByNameFailed("按照姓名查询学生信息失败",10017 ),


    AddMember("增加成员失败",10000),
    DeleteMember("删除成员失败",11000),
    UpdateMember("更新成员失败",11001),
    QueryMemberById("根据id查找成员失败",11002),
    ListAllMember("遍历成员失败",11003),
    QueryMemberByDepartment("根据部门查找成员失败",11004),
    QueryMemberByPosition("根据职位查找成员失败",11005),
    QueryMemberByGrade("根据年级查找成员失败",11006),


    AddJoinerFailed("增加报名学生信息失败",30000),
    DeleteJoinerFailed("删除报名学生信息失败",31000),
    UpdateJoinerFailed("更新报名学生信息失败",31001),
    QueryJoinerFailed("根据报名学生信息失败",31002),
    ListAllJoinerFailed("遍历报名学生信息失败",31003)
    ;
    private String msg;

    private Integer code;

    NFException(String msg, Integer code) {
        this.msg = msg;
        this.code = code;
    }


    @Override
    public String getMes() {
        return null;
    }

    @Override
    public int getCode() {
        return 0;
    }
}
