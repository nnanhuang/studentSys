import request from '../utils/request.js'

//获取学生成绩信息
export function getStuGPA() {
  return request({
    url: '/stu/getStuGPA',
    method: 'get'
  })
}

//获取学生志愿时长信息
export function getStuVol() {
  return request({
    url: '/stu/getStuVolunteer',
    method: 'get'
  })
}

