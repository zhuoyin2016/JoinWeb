package com.pandawork.mapper;

import com.pandawork.common.entity.Joiner;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 芋头 on 2017/11/10.
 */
public interface PageMapper {
    /**
     * 查询所有记录，使用分页对象中的一些变量获取
     * @param a
     * @param b
     * @return
     * @throws Exception
     */
    public List<Joiner> queryByPage(@Param("a") int a, @Param("b")int b) throws Exception;

    /**
     * 查询记录条数
     * @return int
     */
    public int getTotalRows() throws Exception;
}
