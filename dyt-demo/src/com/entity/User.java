package com.entity;



public class User  
{
    private Integer id;
    private String name;
    private Integer age;
    private String tel;
    private String postName;
    private String devName;
    private String keshiName;
    public Integer getId()
    {
        return id;
    }
    public void setId(Integer id)
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
    public Integer getAge()
    {
        return age;
    }
    public void setAge(Integer age)
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
    public String getPostName()
    {
        return postName;
    }
    public void setPostName(String postName)
    {
        this.postName = postName;
    }
    public String getDevName()
    {
        return devName;
    }
    public void setDevName(String devName)
    {
        this.devName = devName;
    }
    public String getKeshiName()
    {
        return keshiName;
    }
    public void setKeshiName(String keshiName)
    {
        this.keshiName = keshiName;
    }
    @Override
    public String toString()
    {
        return "User [id=" + id + ", name=" + name + ", age=" + age + ", tel=" + tel + ", postName=" + postName
            + ", devName=" + devName + ", keshiName=" + keshiName + "]";
    }
   
    
    
    
    
    
}
