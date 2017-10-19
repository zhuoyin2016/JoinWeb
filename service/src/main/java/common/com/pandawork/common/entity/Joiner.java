package com.pandawork.common.entity;
import com.pandawork.core.common.entity.AbstractEntity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * Created by 芋头 on 2017/10/19.
 */
@Table(name = "t_joiner")
@Entity
public class Joiner extends AbstractEntity {

    //报名学生id
    @Id
    public Integer id;

    //报名学生姓名
    @Column(name = "joiner_name")
    private  String joinerName;

    //照片
    @Column(name = "joiner_photo")
    private String joinerPhoto;

    //性别
    @Column(name = "joiner_sex")
    private String joinerSex;

    //年级
    @Column(name = "joiner_grade")
    private String joinerGrade;

    //年级排名
    @Column(name = "joiner_ranking")
    private String joinerRanking;

    //籍贯
    @Column(name = "joiner_birthplace")
    private String joinerBir;

    //学院
    @Column(name = "joiner_college")
    private String joinerCollege;

    //专业
    @Column(name = "joiner_major")
    private String joinerMajor;

    //联系方式
    @Column(name = "joiner_number")
    private String joinerNum;

    //QQ
    @Column(name = "joiner_qq")
    private String joinerQQ;

    //意向部门
    @Column(name = "joiner_department")
    private String joinerDep;

    //自我介绍
    @Column(name = "joiner_introduction")
    private String joinerIntro;

    //为什么加入工作室
    @Column(name = "joiner_reason")
    private String joinerReason;

    //状态 0待审核 1审核通过 2审核不通过
    @Column(name = "joiner_state")
    private Integer joinerState;

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public String getJoinerName() {
        return joinerName;
    }

    public void setJoinerName(String joinerName) {
        this.joinerName = joinerName;
    }

    public String getJoinerPhoto() {
        return joinerPhoto;
    }

    public void setJoinerPhoto(String joinerPhoto) {
        this.joinerPhoto = joinerPhoto;
    }

    public String getJoinerSex() {
        return joinerSex;
    }

    public void setJoinerSex(String joinerSex) {
        this.joinerSex = joinerSex;
    }

    public String getJoinerGrade() {
        return joinerGrade;
    }

    public void setJoinerGrade(String joinerGrade) {
        this.joinerGrade = joinerGrade;
    }

    public String getJoinerRanking() {
        return joinerRanking;
    }

    public void setJoinerRanking(String joinerRanking) {
        this.joinerRanking = joinerRanking;
    }

    public String getJoinerBir() {
        return joinerBir;
    }

    public void setJoinerBir(String joinerBir) {
        this.joinerBir = joinerBir;
    }

    public String getJoinerCollege() {
        return joinerCollege;
    }

    public void setJoinerCollege(String joinerCollege) {
        this.joinerCollege = joinerCollege;
    }

    public String getJoinerMajor() {
        return joinerMajor;
    }

    public void setJoinerMajor(String joinerMajor) {
        this.joinerMajor = joinerMajor;
    }

    public String getJoinerNum() {
        return joinerNum;
    }

    public void setJoinerNum(String joinerNum) {
        this.joinerNum = joinerNum;
    }

    public String getJoinerQQ() {
        return joinerQQ;
    }

    public void setJoinerQQ(String joinerQQ) {
        this.joinerQQ = joinerQQ;
    }

    public String getJoinerDep() {
        return joinerDep;
    }

    public void setJoinerDep(String joinerDep) {
        this.joinerDep = joinerDep;
    }

    public String getJoinerIntro() {
        return joinerIntro;
    }

    public void setJoinerIntro(String joinerIntro) {
        this.joinerIntro = joinerIntro;
    }

    public String getJoinerReason() {
        return joinerReason;
    }

    public void setJoinerReason(String joinerReason) {
        this.joinerReason = joinerReason;
    }

    public Integer getJoinerState() {
        return joinerState;
    }

    public void setJoinerState(Integer joinerState) {
        this.joinerState = joinerState;
    }

    @Override
    public String toString() {
        return "Joiner{" +
                "id=" + id +
                ", joinerName='" + joinerName + '\'' +
                ", joinerPhoto='" + joinerPhoto + '\'' +
                ", joinerSex='" + joinerSex + '\'' +
                ", joinerGrade='" + joinerGrade + '\'' +
                ", joinerRanking='" + joinerRanking + '\'' +
                ", joinerBir='" + joinerBir + '\'' +
                ", joinerCollege='" + joinerCollege + '\'' +
                ", joinerMajor='" + joinerMajor + '\'' +
                ", joinerNum='" + joinerNum + '\'' +
                ", joinerQQ='" + joinerQQ + '\'' +
                ", joinerDep='" + joinerDep + '\'' +
                ", joinerIntro='" + joinerIntro + '\'' +
                ", joinerReason='" + joinerReason + '\'' +
                ", joinerState=" + joinerState +
                '}';
    }
}
