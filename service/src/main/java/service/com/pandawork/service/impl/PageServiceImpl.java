package com.pandawork.service.impl;

import com.pandawork.common.entity.Joiner;
import com.pandawork.common.utils.NFException;
import com.pandawork.common.utils.SplitPage;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.mapper.PageMapper;
import com.pandawork.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 芋头 on 2017/11/10.
 */
@Service("pageService")
public class PageServiceImpl implements PageService {

    @Autowired
    PageMapper pageMapper;

    @Autowired
    protected CommonDao commonDao;

    /**
     *查询当前页面显示条数
     * @param sPage
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public List<Joiner> queryByPage(SplitPage sPage)throws SSException {
        List<Joiner> list = new ArrayList<Joiner>();
        try{
            int a = (sPage.getCurrentPage()-1)*sPage.getPageRow();
            int b = sPage.getPageRow();
            list = pageMapper.queryByPage(a,b);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.SystemException, e);
        }
        return list;
    }

    /**
     *查询记录条数
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public int getTotalRows() throws SSException {
        int totalRows = 0;
        try {
            totalRows = pageMapper.getTotalRows();
        }catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.SystemException, e);
        }
        return totalRows;
    }

    /**
     *跳转页面
     * @param flag
     * @return
     * @throws SSException
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public int toNewPage(String flag,SplitPage splitPage) throws SSException{
        int newPage = splitPage.getCurrentPage();//定义新页数为当前页
        if (flag != null && !"".equals(flag)) {
            if (flag.equals("first")) {  //如果传入的参数为第一页
                newPage = 1;
            } else if (flag.equals("last")) {  //如果传入的参数为最后一页
                newPage = splitPage.getTotalPage();
            } else if (flag.equals("next")) { //如果传入的参数为下一页
                newPage = splitPage.getCurrentPage() + (splitPage.getCurrentPage() == (splitPage.getTotalPage()) ? 0 : 1); //判断当前页是否为最后一页
                System.out.println(newPage);
            } else if (flag.equals("previous")) {  //如果传入的参数为上一页
                newPage = splitPage.getCurrentPage()
                        - ((splitPage.getCurrentPage() == splitPage.getFirstPage()) ? 0 : 1);//判断当前页是否为第一页
            } else {
                // 传入的是个数字字符串参数
                newPage = Integer.parseInt(flag.trim());
            }
        } else {// 请求的参数为空，则当前页码不变
            newPage = splitPage.getCurrentPage();
        }
        splitPage.setCurrentPage(newPage);
        return newPage;
    }
}
