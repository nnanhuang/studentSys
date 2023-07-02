import request from '../utils/request.js'

// 计算总成绩
export function computeScoreSum() {
  return request({
    url: '/scoreSum/compute',
    method: 'post',
  })
}

// 获取Gpa数据
export function getGpaList() {
  return request({
    url: '/gpa/getList',
    method: 'get'
  })
}

// 删除Gpa数据
export function deleteGpa() {
  return request({
    url: '/gpa/delete',
    method: 'get'
  })
}

// 更新Gpa数据至成绩汇总表
export function updateToScoreSum() {
  return request({
    url: '/gpa/updateToScoreSum',
    method: 'get'
  })
}

// 获取volunteer数据
export function getVolunList() {
  return request({
    url: '/volun/getList',
    method: 'get'
  })
}

// 删除Volunteer数据
export function deleteVolun() {
  return request({
    url: '/volun/delete',
    method: 'get'
  })
}

// 更新Volunteer数据至成绩汇总表
export function updateToScoreSum1() {
  return request({
    url: '/volun/updateToScoreSum',
    method: 'get'
  })
}

// 获取user数据
export function getUserList() {
  return request({
    url: '/user/getList',
    method: 'get'
  })
}

// 获取user数据
export function getUserRoleList() {
  return request({
    url: '/userRole/getList',
    method: 'get'
  })
}

