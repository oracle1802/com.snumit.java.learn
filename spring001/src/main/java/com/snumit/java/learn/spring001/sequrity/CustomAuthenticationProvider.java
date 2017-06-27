package com.snumit.java.learn.spring001.sequrity;

import com.snumit.java.learn.spring001.service.ServiceUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * Created by Andrey on 10.04.2017.
 */
public class CustomAuthenticationProvider implements UserDetailsService
{
    @Autowired
    ServiceUser serviceUser = null;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return serviceUser.findByLoginName(s);
    }
}
