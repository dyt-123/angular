package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.PageBean;
import com.entity.User;
import com.entity.UserInfo;
import com.entity.UserTest;
import com.entity.Userpdk;

public interface UserDao {
	List<UserInfo> getAll();
	void del(Integer id);
	void addUser(Userpdk user);
	Userpdk editById(Integer id);
	List<User> seachAllByName(String name);
	void insertUser(User user);
	void upDateUser(Userpdk user);
	
	List<User> getList(PageBean<User> page);
    Integer getCount(Map<String,Object> map);
   
    void deleteIds(@Param("ids")List<String> ids);
    
    List<UserInfo> getTestAll();
}
