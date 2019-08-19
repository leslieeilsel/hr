import request from '../utils/request'

/**
 * 用户登录
 * @param username 登录用户名
 * @param password 登录密码
 * @returns {*}
 */
export function login(username, password) {
  return request({
    url: '/api/login',
    method: 'post',
    data: {
      username,
      password
    }
  })
}

/**
 * 获取当前登录用户的信息
 * @returns {*}
 */
export function getUserInfo() {
  return request({
    url: '/api/user',
  })
}

/**
 * 获取当前登录用户的信息
 * @returns {*}
 */
export function logout() {
  return request({
    url: '/api/logout',
    method: 'post',
  })
}

/**
 * 密码重置的邮件发送
 * @param email
 * @returns {*}
 */
export function sendEmail(email) {
  return request({
    url: '/api/password/email',
    method: 'post',
    data: { email }
  })
}

/**
 * 密码重置的请求
 * @returns {*}
 */
export function resetPassword(form) {
  return request({
    url: '/api/password/reset',
    method: 'post',
    data: { ...form }
  })
}
