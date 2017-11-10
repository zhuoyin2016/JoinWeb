package com.pandawork.service;

import com.pandawork.common.entity.Joiner;
import com.pandawork.common.utils.SplitPage;
import com.pandawork.core.common.exception.SSException;

import java.util.List;

/**
 * Created by 芋头 on 2017/11/10.
 */
public interface PageService {

    /**
     * 查询所有记录，使用分页对象中的一些变量获取
     * @param sPage
     * @return
     * @throws SSException
     */
    public List<Joiner> queryByPage(SplitPage sPage) throws SSException;

    /**
     * 查询记录条数
     * @return int
     */
    public int getTotalRows() throws SSException;

    /**
     *
     * @param flag
     * @return
     * @throws SSException
     */
    public int toNewPage(String flag,SplitPage splitPage) throws SSException;
}
