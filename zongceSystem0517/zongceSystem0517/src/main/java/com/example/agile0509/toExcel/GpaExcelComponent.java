package com.example.agile0509.toExcel;

/**
 * @author Junzhe
 * @ClassName ExcelComponent
 * @date 2023/5/16 16:52
 */

import com.alibaba.excel.EasyExcel;
import com.example.agile0509.vo.StuGPAReqVo;
import com.example.agile0509.mapper.BatchInsertMapper;
import com.example.agile0509.mapper.ScoreMapper;
import com.example.agile0509.pojo.Score;
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
public class GpaExcelComponent {

    @Resource
    private ScoreMapper scoreMapper;

    /**
     * Excel文件分批导入数据库
     *
     * @param file 上传的文件
     * @throws IOException 读取文件异常
     */
    public void importConsumerFile(@RequestParam("file") MultipartFile file) throws IOException {
        EasyExcel.read(file.getInputStream())
                .head(StuGPAReqVo.class)
                .registerReadListener(new ExcelImportListener<Score>() {
                    @Override
                    protected BatchInsertMapper<Score> getMapper() {
                        return scoreMapper;
                    }
                }).sheet().doRead();
    }
}

