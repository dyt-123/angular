package com.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.PageBean;
import com.entity.User;
import com.entity.UserInfo;
import com.entity.UserTest;
import com.entity.Userpdk;
import com.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao;

    public List<UserInfo> getAll()
    {
        // TODO Auto-generated method stub
        return userDao.getAll();
    }

    

    public void del(Integer id)
    {
        // TODO Auto-generated method stub
        userDao.del(id);
    }



    public void addUser(Userpdk user)
    {
        // TODO Auto-generated method stub
        userDao.addUser(user);
    }



    public Userpdk editById(Integer id)
    {
        return userDao.editById(id);
    }



    public void upDateUser(Userpdk user)
    {
        // TODO Auto-generated method stub
        userDao.upDateUser(user);
    }



    public List<User> seachAllByName(String name)
    {
        // TODO Auto-generated method stub
        return userDao.seachAllByName(name);
    }


    public List<User> getList(PageBean<User> page)
    {
        // TODO Auto-generated method stub
        return userDao.getList(page);
    }



    public Integer getCount(Map<String, Object> map)
    {
        // TODO Auto-generated method stub
        return userDao.getCount(map);
    }



    public PageBean<User> pageBeanUser(PageBean<User> page)
    {
        // TODO Auto-generated method stub
        Integer count=this.getCount(page.getMap());
       
        page.setTolCount(count);
        List<User> list=this.getList(page);
        page.setList(list);
        return page;
    }



    public void deleteIds(List<String> ids)
    {
        // TODO Auto-generated method stub
        userDao.deleteIds(ids);
    }



    public List<UserInfo> getTestAll()
    {
        // TODO Auto-generated method stub
        return userDao.getTestAll();
    }




}
