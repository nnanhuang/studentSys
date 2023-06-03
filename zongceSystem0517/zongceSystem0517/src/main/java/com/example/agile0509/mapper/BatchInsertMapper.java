package com.example.agile0509.mapper;

import java.util.List;

/**
 * 批量插入的Mapper, 用xml配置文件自定义批量插入，
 * 避免MyBatis的逐条插入降低性能
 */
//<T>是Java中的泛型
public interface BatchInsertMapper<T> {
    void batchInsert(List<T> list);
}



