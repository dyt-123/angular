package com.entity;


public class Userpdk
{
    private Integer id;
    
    private String name;
    
    private Integer age;
    
    private String tel;
    
    private Integer did;
    
    private Integer pid;
    
    private Integer kid;
    
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
    
    public Integer getDid()
    {
        return did;
    }
    
    public void setDid(Integer did)
    {
        this.did = did;
    }
    
    public Integer getPid()
    {
        return pid;
    }
    
    public void setPid(Integer pid)
    {
        this.pid = pid;
    }
    
    public Integer getKid()
    {
        return kid;
    }
    
    public void setKid(Integer kid)
    {
        this.kid = kid;
    }
    
    @Override
    public String toString()
    {
        return "Userpdk [id=" + id + ", name=" + name + ", age=" + age + ", tel=" + tel + ", did=" + did + ", pid="
            + pid + ", kid=" + kid + "]";
    }
    
}
