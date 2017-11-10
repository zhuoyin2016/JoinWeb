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
    ListAllMember("便利成员失败",11003),
    QueryMemberByDepartment("根据部门查找成员失败",11004),
    QueryMemberByPosition("根据职位查找成员失败",11005),
    QueryMemberByGrade("根据年级查找成员失败",11006),

    AddImageFailed("添加图片失败",90001),
    DelImageByIdFailed("删除图片失败",90002),
    UpdateImageFailed("更新图片失败",90003),
    queryImageByIdFailed("据id查询图片失败",90004),
    ListSlImageAllFailed("查询被轮播图片列表失败",90005),
    ListImageAllFailed("查询图片列表失败",90005),

    AddJoinerFailed("报名失败",30001),
    DeleteJoinerFailed("删除报名学生失败",30002),
    UpdateJoinerFailed("更新报名信息失败",30003),
    ListAllJoinerFailed("遍历报名学生失败",30004),
    QueryJoinerFailed("查询报名学生失败",30005),

    AddActivityFailed("添加活动失败",80001),
    DelActivityByIdFailed("删除活动失败",80002),
    UpdateActivityFailed("更新活动失败",80003),
    QueryActivityByIdFailed("根据id查询活动失败",80004),
    QueryActivityByTitleFailed("根据标题查询活动失败",8005),
    ListActivityAllFailed("查询活动列表失败",80006),

    AddProjectFailed("添加项目介绍失败",70001),
    DelProjectFailed("删除项目介绍失败",70002),
    UpdateProjectFailed("更新项目介绍失败",70003),
    SelectProjectFailed("查询项目信息失败",70004),
    ListAllProjectFailed("查询全部项目信息失败",70005)
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
