import request from '../utils/request.js'



// 获取用户角色
export function getRole() {
  return request({
    url: '/user/get/role',
    method: 'get'
  })
}

// 获取用户动态菜单
export function getMenu() {
  return request({
    url: '/user/get/menu',
    method: 'get'
  })
}

