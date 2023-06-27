package com.example.agile0509.toExcel;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.read.listener.ReadListener;
import com.example.agile0509.mapper.BatchInsertMapper;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Junzhe
 * @ClassName ExcelImportListener
 * @date 2023/5/16 16:50
 * 从Excel文件流中分批导入数据到库中
 * EasyExcel参考文档：https://easyexcel.opensource.alibaba.com/docs/current/api/
 */

@Slf4j
public abstract class ExcelImportListener<T> implements ReadListener<T> {

    /**
     * 缓存大小,100条数据写入一次数据库
     */
    private static final int BATCH_SIZE = 10;

    /**
     * 缓存数据,用来存储缓存数据()
     */
    private List<T> cacheList = new ArrayList<>(BATCH_SIZE);

    /*
     * po:从excel中解析一行得到的实体类(pojo)
     * */
    @Override
    public void invoke(T po, AnalysisContext analysisContext) {
        System.out.println(po);
        cacheList.add(po);
        if (cacheList.size() >= BATCH_SIZE) {
            log.info("完成一批Excel记录的导入，条数为：{}", cacheList.size());
            getMapper().batchInsert(cacheList);
            cacheList = new ArrayList<>(BATCH_SIZE);
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        if(cacheList.size() > 0){
            getMapper().batchInsert(cacheList);
        }
        log.info("完成最后一批Excel记录的导入，条数为：{}", cacheList.size());
    }

    /**
     * 获取批量插入的Mapper
     * @return 批量插入的Mapper
     */
    protected abstract BatchInsertMapper<T> getMapper();

}

