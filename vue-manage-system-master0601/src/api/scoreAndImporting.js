import request from '../utils/request.js'

// 计算总成绩
export function computeScoreSum() {
  return request({
    url: '/scoreSum/compute',
    method: 'post',
  })
}

