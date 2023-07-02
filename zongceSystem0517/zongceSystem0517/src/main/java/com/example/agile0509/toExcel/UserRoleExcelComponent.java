package com.example.agile0509.toExcel;

/**
 * @author Junzhe
 * @date 2023/7/2 0:16
 */

import com.alibaba.excel.EasyExcel;
import com.example.agile0509.mapper.BatchInsertMapper;
import com.example.agile0509.mapper.UserRoleMapper;
import com.example.agile0509.pojo.UserRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;

/**
 * Excel导入组件
 *
 */
@Slf4j
@Component
public class UserRoleExcelComponent {

    @Resource
    private UserRoleMapper userRoleMapper;

    /**
     * Excel文件分批导入数据库
     *
     * @param file 上传的文件
     * @throws IOException 读取文件异常
     */
    public void importFile(@RequestParam("file") MultipartFile file) throws IOException {
        EasyExcel.read(file.getInputStream())
                .head(UserRole.class)
                .registerReadListener(new ExcelImportListener<UserRole>() {
                    @Override
                    protected BatchInsertMapper<UserRole> getMapper() {
                        return userRoleMapper;
                    }
                }).sheet().doRead();
    }
}

