package com.study.mybatis.mapper;

import com.study.mybatis.pojo.User;

public interface UserMapper {

	User findUserById(Integer id);
	
}
