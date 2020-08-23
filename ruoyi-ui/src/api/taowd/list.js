import request from '@/utils/request'

// 查询资源信息列表
export function listList(query) {
  return request({
    url: '/taowd/list/list',
    method: 'get',
    params: query
  })
}

// 查询资源信息详细
export function getList(id) {
  return request({
    url: '/taowd/list/' + id,
    method: 'get'
  })
}

// 新增资源信息
export function addList(data) {
  return request({
    url: '/taowd/list',
    method: 'post',
    data: data
  })
}

// 修改资源信息
export function updateList(data) {
  return request({
    url: '/taowd/list',
    method: 'put',
    data: data
  })
}

// 删除资源信息
export function delList(id) {
  return request({
    url: '/taowd/list/' + id,
    method: 'delete'
  })
}

// 导出资源信息
export function exportList(query) {
  return request({
    url: '/taowd/list/export',
    method: 'get',
    params: query
  })
}