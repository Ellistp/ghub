package com.ctp.ghub.serviceimpl;

import com.ctp.ghub.dao.UserDao;
import com.ctp.ghub.model.UserDO;
import com.ctp.ghub.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/5/12 0012.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public int insert(UserDO userDO) {
        return userDao.insert(userDO);
    }

    @Override
    public int update(UserDO userDO) {
        return userDao.update(userDO);
    }

    @Override
    public int delete(Long id) {
        return userDao.delete(id);
    }

    @Override
    public UserDO selectById(Long id) {
        return userDao.selectById(id);
    }

    @Override
    public UserDO selectByAccount(String account) {
        return this.userDao.selectByAccount(account);
    }
}
