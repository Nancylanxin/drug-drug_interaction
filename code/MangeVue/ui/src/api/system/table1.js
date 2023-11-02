import request from '@/utils/request'

// 查询药品作用管理列表
export function listTable1(query) {
  return request({
    url: '/system/table1/list',
    method: 'get',
    params: query
  })
}

// 查询药品作用管理详细
export function getTable1(id) {
  return request({
    url: '/system/table1/' + id,
    method: 'get'
  })
}

// 新增药品作用管理
export function addTable1(data) {
  return request({
    url: '/system/table1',
    method: 'post',
    data: data
  })
}

// 修改药品作用管理
export function updateTable1(data) {
  return request({
    url: '/system/table1',
    method: 'put',
    data: data
  })
}

// 删除药品作用管理
export function delTable1(id) {
  return request({
    url: '/system/table1/' + id,
    method: 'delete'
  })
}
