package com.xnct.powermt.modules.maintenance.service;

import com.xnct.powermt.modules.maintenance.dao.LoginDao;
import com.xnct.powermt.modules.maintenance.entity.LoginInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/19.
 */
@Service
public class LoginService {

    @Autowired
    LoginDao loginDao;

    public LoginInfo queryLogin(String account, String psw){
        Map<String, String> login = new HashMap<String, String>();
        login.put("account", account);
        login.put("psw", psw);
        return loginDao.queryLogin(login);
    }
}
