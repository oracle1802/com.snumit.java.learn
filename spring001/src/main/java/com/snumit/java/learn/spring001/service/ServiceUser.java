package com.snumit.java.learn.spring001.service;

import com.snumit.java.learn.spring001.persistence.entity.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Andrey on 07.04.2017.
 */
@Service
public class ServiceUser
{
    public ServiceUser(){
        System.out.println(this.getClass().getSimpleName() + " instantiated");
    }

    private static final Log LOG = LogFactory.getLog(ServiceUser.class);

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Resource(name = "sessionFactory")
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public String getCurrentUser(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        return  username;
    }

    public void addUser(User user){
//        this.userlst.add(user);
    }
    @Transactional
    public List<User> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from User c").list();
    }

    @Transactional
    public List<User> findAllPage(int pageNumber, int pageLinesCount) {

        return sessionFactory.getCurrentSession().createCriteria(User.class).addOrder(Order.asc("userId")).setFirstResult(pageNumber * pageLinesCount).setMaxResults( pageLinesCount).list();
    }

    @Transactional
    public User findByLoginName(String loginName) {
        return (User)sessionFactory.getCurrentSession().createQuery("from User c where loginName = :pLoginName").setParameter("pLoginName", loginName).uniqueResult();
    }
}
