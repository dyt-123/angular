package com.entity;

public class Users
{
    private int id;
    private String name;
    private int age;
    private String tel;
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    public int getAge()
    {
        return age;
    }
    public void setAge(int age)
    {
        this.age = age;
    }
    public String getTel()
    {
        return tel;
    }
    public void setTel(String tel)
    {
        this.tel = tel;
    }
    @Override
    public String toString()
    {
        return "Users [id=" + id + ", name=" + name + ", age=" + age + ", tel=" + tel + "]";
    }
    
    
    
}
