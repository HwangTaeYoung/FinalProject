package com.example.demo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.mapper.UserMapper;

@Service("com.example.demo.service.UserService")
public class UserService {

		@Resource(name="com.example.demo.mapper.UserMapper")
		UserMapper muserMapper;
}
