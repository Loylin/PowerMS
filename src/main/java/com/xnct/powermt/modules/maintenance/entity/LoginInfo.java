package com.xnct.powermt.modules.maintenance.entity;

/**
 * Created by Administrator on 2017/7/19.
 */
public class LoginInfo {

    private String account;
    private String psw;
    private String name;
    private String dept;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    @Override
    public String toString() {
        return "LoginInfo{" +
                "account='" + account + '\'' +
                ", psw='" + psw + '\'' +
                ", name='" + name + '\'' +
                ", dept='" + dept + '\'' +
                '}';
    }
}
