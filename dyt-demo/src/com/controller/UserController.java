package com.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.PageBean;
import com.entity.User;
import com.entity.UserInfo;
import com.entity.UserTest;
import com.entity.Userpdk;
import com.service.UserService;
@Controller
@RequestMapping("user")
public class UserController {
    
	@Resource
	private UserService userService ;
	
	
	
	
	@ResponseBody
    @RequestMapping("/getString")
    public String getString(HttpServletRequest request,HttpServletResponse response){   
           return "我正在测试";
       }
	
	
	 @ResponseBody
	 @RequestMapping("/getTestAll")
	 public List<UserInfo> getTestAll(HttpServletRequest request,HttpServletResponse response){   
	        List<UserInfo> list=userService.getTestAll();
	            System.out.println(list);
                return list;
	    }
	 
	
	/*------------angular分页请求地址开始-----------*/
	
    /*------------首页-----------*/
    @ResponseBody
    @RequestMapping(value = "/listAll",method = RequestMethod.POST)
    public  PageBean<User> listAll(HttpServletRequest request,HttpServletResponse response){   
        PageBean<User> pageBean=new PageBean<User>();
        int page1=1;
        Map<String,Object> map=new HashMap<String,Object>();
        pageBean.setPage(page1);
        pageBean.setMap(map);
        pageBean=userService.pageBeanUser(pageBean);
        return pageBean;
    }
    
    
    /*------------带参的方法-----------*/
    @ResponseBody
    @RequestMapping(value = "/listAllTg",method = RequestMethod.POST)
    public PageBean<User> listAll1(HttpServletRequest request,HttpServletResponse response,@RequestParam(value="page",required=true)Integer page,@RequestParam(value="name",required=true)String name) throws IOException{   
        List<User> list=userService.seachAllByName(name);
        PageBean<User> pageBean=new PageBean<User>();
        Map<String,Object> map=new HashMap<String,Object>();
        if(list.size()>0){
            map.put("name", name);
            pageBean.setPage(page);
            pageBean.setMap(map);
            pageBean=userService.pageBeanUser(pageBean);
        }
        
        return pageBean;
    }
    
    /*------------单个删除-----------*/
    @RequestMapping(value = "/del",method = RequestMethod.POST)
    public void del(HttpServletRequest request,HttpServletResponse response,Integer id){
        userService.del(id);
        
    }
    
    /*------------批量删除循环调用del方法-----------*/
    @RequestMapping(value = "/deletes",method = RequestMethod.POST)
    public ModelAndView deletes(ModelAndView mv, HttpServletRequest request,HttpServletResponse response,String ids){
        String[] idss=ids.split(",");
        Integer[] idsarry = new Integer[idss.length];
        for(int i=0;i<idss.length;i++) {
        idsarry[i]=Integer.parseInt(idss[i]);
        }
        
        for (Integer n : idsarry)
        {
           userService.del(n);
        }
        mv.setViewName("list");
        return mv;
        
        
    }
    
    /*------------添加-----------*/
    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public void addUser(HttpServletRequest request,HttpServletResponse response,@RequestBody Userpdk user){
        userService.addUser(user);
    }
    
    
    /*---------编辑之前通过ID查询---------*/
    @ResponseBody
    @RequestMapping(value = "/seachUserId",method = RequestMethod.POST)
    public Userpdk seachUserId(Integer id){   
        Userpdk user=userService.editById(id);
        return user;
    }
    
    
    /*-----------编辑------------*/
    @RequestMapping(value = "/upDate",method = RequestMethod.POST)
    public void upDate(HttpServletRequest request,HttpServletResponse response,@RequestBody Userpdk user){
        userService.upDateUser(user);
        
    }
    
    /*------------angular分页请求地址结束-----------*/ 
    
    
    
    /*-------------jqury写的分页CRUD请求地址开始-------------*/
    
    /*------------首页-----------*/
    @RequestMapping("/testAll")
       public  ModelAndView testAll(ModelAndView mv, HttpServletRequest request,HttpServletResponse response){   
           PageBean<User> pageBean=new PageBean<User>();
           int page1=1;
           Map<String,Object> map=new HashMap<String,Object>();
           pageBean.setPage(page1);
           pageBean.setMap(map);
           
           pageBean=userService.pageBeanUser(pageBean);
           mv.addObject("pageBean", pageBean);
           mv.setViewName("qianlist");
           return mv;
       }
    
    
    /*------------操作之后的地址-----------*/
    
    @RequestMapping("/test2")
    public ModelAndView test2(ModelAndView mv,HttpServletRequest request,HttpServletResponse response,String name,String page){   
        //System.out.println(name+"-"+page);
        List<User> list=userService.seachAllByName(name);
        if(list.size()>0){
            PageBean<User> pageBean=new PageBean<User>();
            int page1=Integer.parseInt(page);
            Map<String,Object> map=new HashMap<String,Object>();
            map.put("name", name);
            pageBean.setPage(page1);
            pageBean.setMap(map);
            
            pageBean=userService.pageBeanUser(pageBean);
            mv.addObject("pageBean", pageBean);
            mv.setViewName("qianlist");
           
        }else{
            
            mv.setViewName("redirect:testAll.do");
        }
        
        return mv;
    }
   
   /*------------批量删除-----------*/
   @RequestMapping("deletes1")
   public ModelAndView deletes1(HttpServletRequest request,HttpServletResponse response,String ids){
       String[] idss=ids.split(",");
       Integer[] idsarry = new Integer[idss.length];
       for(int i=0;i<idss.length;i++) {
       idsarry[i]=Integer.parseInt(idss[i]);
       }
       
       for (Integer n : idsarry)
       {
          userService.del(n);
       }
      
       return new ModelAndView("redirect:test2.do");
       
   }
   
   /*-------动态语句批量删除-----------*/
   @RequestMapping("deleteIds")
   public ModelAndView deleteIds(HttpServletRequest request,HttpServletResponse response,String ids){
       List<String> list = new ArrayList<String>();
       list.add(ids);
       System.out.println(list);
       userService.deleteIds(list);
       
       return new ModelAndView("redirect:test2.do");
       
   }
   
   /*------------添加-----------*/
   @RequestMapping("addUserQian")
   public ModelAndView addUserQian(HttpServletRequest request,HttpServletResponse response,Userpdk user){
       userService.addUser(user);
       return new ModelAndView("redirect:test2.do");
       
   }
   
   /*------------通过ID删除-----------*/
   @RequestMapping("delQian")
   public ModelAndView delQian(HttpServletRequest request,HttpServletResponse response,Integer id){
       userService.del(id);
       return new ModelAndView("redirect:testAll.do");
       
   }
   
   /*-----------编辑之前先通过ID查询-----------*/
   @RequestMapping("editUserQian")
   public ModelAndView editUserQian(ModelAndView mv,HttpServletRequest request,HttpServletResponse response,Integer id){
       Userpdk user=userService.editById(id);
       mv.addObject("user", user);
       mv.setViewName("editUserQian");
       return mv;
       
   }
   
   /*------------编辑-----------*/
   @RequestMapping("upDateUserQian")
   public ModelAndView upDateUserQian(HttpServletRequest request,HttpServletResponse response,Userpdk user){
       
       userService.upDateUser(user);
       
       return new ModelAndView("redirect:test2.do");
       
   }
   
   /*-------------jqury写的分页CRUD请求地址结束-------------*/

    
    
     
}
