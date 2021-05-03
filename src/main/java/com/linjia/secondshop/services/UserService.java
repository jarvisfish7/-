package com.linjia.secondshop.services;

import com.linjia.secondshop.mappers.UserMapper;
import com.linjia.secondshop.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {

	/**
	 * 自动注入mapper
	 */
	@Autowired
	private UserMapper userMapper;

	/**
	 * 获取所有用户列表
	 * @return
	 */
	@Transactional
	public List<User> getAllUser() {
		return userMapper.getAllUser();
	}

	/**
	 * 通过id获取用户
	 * @return
	 */
	@Transactional
	public User getUserById(int id) {
		return userMapper.getUserById(id);
	}

	/**
	 * 通过Email获取用户
	 * @return
	 */
	@Transactional
	public User getUserByEmail(String email) {
		return userMapper.getUserByEmail(email);
	}

	/**
	 * 通过手机号码获取用户
	 * @return
	 */
	@Transactional
	public User getUserByMobile(String mobile) {
		return userMapper.getUserByMobile(mobile);
	}

	/**
	 * 注册用户
	 * @return
	 */
	@Transactional
	public Boolean registerUser(User user) {
		return userMapper.insertUser(user) > 0;
	}

	/**
	 * 更新用户信息
	 * @param user
	 * @return
	 */
	@Transactional
	public Boolean updateUser(User user) {
		return userMapper.updateUser(user) > 0;
	}

	/**
	 * 删除用户
	 * @param userId
	 * @return
	 */
	@Transactional
	public Boolean deleteUser(Integer userId) {
		return userMapper.deleteUser(userId) > 0;
	}

	/**
	 * 更新用户状态
	 * @param statusId
	 * @param userId
	 * @return
	 */
	@Transactional
	public Boolean updateUserStatus(Integer statusId, Integer userId) {
		return userMapper.updateUserStatus(statusId, userId) > 0;
	}

	/**
	 * 更新密码
	 * @param newPassword
	 * @param code
	 * @param userId
	 * @return
	 */
	@Transactional
	public Boolean updatePassword(String newPassword, String code,
			Integer userId) {
		return userMapper.updatePassword(newPassword, code, userId) > 0;
	}

	/**
	 * 用户余额充值
	 * @param money
	 * @param userId
	 * @return
	 */
	@Transactional
	public boolean rechargeToCount(int money, Integer userId) {
		return userMapper.rechargeToCount(money, userId) > 0;
	}

	/**
	 * 用户等级更新
	 * @param grade
	 * @param userid
	 * @return
	 */
	@Transactional
	public boolean changGrade(int grade, int userid) {
		return userMapper.changGrade(grade, userid) > 0;
	}
	
}
