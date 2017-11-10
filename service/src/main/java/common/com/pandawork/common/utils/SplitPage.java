package com.pandawork.common.utils;

/**
 * Created by 芋头 on 2017/11/10.
 */
public class SplitPage {
    private int pageRow = 8;//每页显示几条数据
    private int totalRows = 0;//数据条数
    private int currentPage = 1;//当前页
    private int firstPage = 1;//首页
    private int totalPage = 1;//总页数

    public int getPageRow() {
        return pageRow;
    }

    public void setPageRow(int pageRow) {
        this.pageRow = pageRow;
        this.totalPage = this.totalRows / this.pageRow
                + ((this.totalRows % this.pageRow == 0) ? 0 : 1);
    }

    public int getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
        this.totalPage = this.totalRows/this.pageRow+((this.totalRows%this.pageRow==0)?0:1);
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    public int getTotalPage() {
        return totalPage;
    }
}
