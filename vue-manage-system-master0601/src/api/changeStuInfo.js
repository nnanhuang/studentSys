import request from '../utils/request.js'

//评委获取学生成绩信息
export function checkStuGPA() {
  return request({
    url: '/teacher/getGPA',
    method: 'get'
  })
}

//评委获取学生志愿时长信息
export function checkStuVol() {
  return request({
    url: '/teacher/getVolunteer',
    method: 'get'
  })
}

//评委修改学生成绩信息方法
export function changeGPA(id,gpa,newgpa) {
  const data = {
    id,
    gpa,
    newgpa
  }
  return request({
    url: '/teacher/changeGPA',
    method: 'post',
    data: data
  })
}

//评委修改学生志愿时长信息方法
export function changeVol(id,time,newtime) {
  const data = {
    id,
    time,
    newtime
  }
  return request({
    url: '/teacher/changeVolunteer',
    method: 'post',
    data: data
  })
}
