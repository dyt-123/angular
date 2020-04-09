package com.entity;

import java.util.List;

public class UserTest
{
    private Integer id;
    private String name;
    private Integer age;
    private String tel;
    private List<Department> dep;
    private List<Post> post;
    private List<Keshi> keshi;
    
    
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
    public List<Department> getDep()
    {
        return dep;
    }
    public void setDep(List<Department> dep)
    {
        this.dep = dep;
    }
    public List<Post> getPost()
    {
        return post;
    }
    public void setPost(List<Post> post)
    {
        this.post = post;
    }
    public List<Keshi> getKeshi()
    {
        return keshi;
    }
    public void setKeshi(List<Keshi> keshi)
    {
        this.keshi = keshi;
    }
    @Override
    public String toString()
    {
        return "UserTest [id=" + id + ", name=" + name + ", age=" + age + ", tel=" + tel + ", dep=" + dep + ", post="
            + post + ", keshi=" + keshi + "]";
    }
    
    
    
}
