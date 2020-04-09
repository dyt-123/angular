package com.entity;

public class UserInfo
{
    
    private Integer id;
    private String name;
    private Integer age;
    private String tel;
    private Post post;
    private Department dev;
    private Keshi keshi;
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
    public Post getPost()
    {
        return post;
    }
    public void setPost(Post post)
    {
        this.post = post;
    }
    public Department getDev()
    {
        return dev;
    }
    public void setDev(Department dev)
    {
        this.dev = dev;
    }
    public Keshi getKeshi()
    {
        return keshi;
    }
    public void setKeshi(Keshi keshi)
    {
        this.keshi = keshi;
    }
    @Override
    public String toString()
    {
        return "UserInfo [id=" + id + ", name=" + name + ", age=" + age + ", tel=" + tel + ", post=" + post + ", dev="
            + dev + ", keshi=" + keshi + "]";
    }
    
    
    
}
