package com.service.impl;

import com.dao.IUserDao;
import com.pojo.User;

import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    /*
     *用户注册功能
     * @param user
     * @return 注册成功返回success，失败返回false
     */
    @Override
    public boolean addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public boolean deleteUser(String userName) {
        return userDao.deleteUser(userName);
    }

    @Override
    public boolean updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public LinkedList<User> findAllUser() {
        return userDao.findAllUser();
    }

    @Override
    public LinkedList<User> findSomeUser(String keyInfo) {
        return userDao.findSomeUser(keyInfo);
    }
}
