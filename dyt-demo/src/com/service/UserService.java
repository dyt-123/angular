package com.service;

import java.util.List;
import java.util.Map;

import com.entity.PageBean;
import com.entity.User;
import com.entity.UserInfo;
import com.entity.UserTest;
import com.entity.Userpdk;

public interface UserService {
    
    List<UserInfo> getAll();
    void del(Integer id);
    void addUser(Userpdk user);
    Userpdk editById(Integer id);
    List<User> seachAllByName(String name);
    void upDateUser(Userpdk user);
    List<User> getList(PageBean<User> page);
    Integer getCount(Map<String,Object> map);
    PageBean<User> pageBeanUser(PageBean<User> page);
    void deleteIds(List<String> ids);
    
    List<UserInfo> getTestAll();
}
