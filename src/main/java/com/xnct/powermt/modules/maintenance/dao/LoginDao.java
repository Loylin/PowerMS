package com.xnct.powermt.modules.maintenance.dao;

import com.xnct.powermt.modules.maintenance.entity.LoginInfo;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * Created by Administrator on 2017/7/19.
 */
@Repository
public interface LoginDao {

    public LoginInfo queryLogin(Map<String, String> login);
}
