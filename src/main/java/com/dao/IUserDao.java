package com.dao;

import com.pojo.User;

import java.util.LinkedList;

//封装对数据库的访问

public interface IUserDao {
    //增加用户
    boolean addUser(User user);

    //删除用户
    boolean deleteUser(String userName);

    //修改用户信息
    boolean updateUser(User user);

    //查找所有用户信息
    LinkedList<User> findAllUser();

    //根据条件查找
    LinkedList<User> findSomeUser(String keyInfo);
}
