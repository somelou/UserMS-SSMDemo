package com.controller;


import com.pojo.User;

import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.LinkedList;

@Controller
@RequestMapping("/user")
public class UserController{

    @Autowired
    private IUserService userService;

    @RequestMapping("/allUser")
    public String allList(Model model) {
        LinkedList<User> allList=userService.findAllUser();
        model.addAttribute("list", allList);
        return "allUser";
    }

    @RequestMapping("toAddUser")
    public String toAddUser() {
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(User user) {
        userService.addUser(user);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/del/{userName}")
    public String deleteUser(@PathVariable("userName") String name) {
        //System.out.println("执行delete前："+name);
        userService.deleteUser(name);
        //System.out.println("执行delete后："+name);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/findUser")
    //查找用户
    public String findUser(Model model,String userName){
        LinkedList<User> someList=userService.findSomeUser(userName);
        model.addAttribute("list", someList);
        return "allUser";
    }

    @RequestMapping("toUpdateUser")
    public String toUpdateUser(Model model, String name) {
        System.out.println(name);
        //模糊查询到精确
        //可以通过增加findUserByName()来优化逻辑
        LinkedList<User> findUser=userService.findSomeUser(name);
        System.out.println("findUserByName:"+findUser);
        for (User u:findUser) {
            if(u.getUserName().equals(name)){
                model.addAttribute("user", u);
            }
        }
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, User user) {
        userService.updateUser(user);
        //模糊查询到精确
        LinkedList<User> findUser=userService.findSomeUser(user.getUserName());
        for (User u:findUser) {
            if(u.getUserName().equals(user.getUserName())){
                user=u;
            }
        }
        model.addAttribute("user", user);
        return "redirect:/user/allUser";
    }

}
