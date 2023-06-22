package com.example.agile0509.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.agile0509.pojo.VolunteerService;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface VolunteerMapper extends BaseMapper<VolunteerService>,BatchInsertMapper<VolunteerService>  {
    Double getTimeByStudentId(Integer studentId);

    List<VolunteerService> getVolunteers();

    @Update("UPDATE volunteerService SET duration = #{newtime}, status = #{status} WHERE studentID = #{studentID}")
    void updateTimeAndStatus(Integer studentID, Double time, Double newtime,Boolean status);
}
