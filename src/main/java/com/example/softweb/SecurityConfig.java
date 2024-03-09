package com.example.softweb;

import com.example.softweb.Service.AdminService;
import com.example.softweb.Service.UserService;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public  class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserService userService;
    @Autowired
    AdminService adminService;

    @Override
    protected void configure(AuthenticationManagerBuilder configureBuild) throws Exception{
        configureBuild
                .inMemoryAuthentication()
                .withUser("user")
                .password("password")
                .roles("USER")
                .and()
                .withUser("admin")
                .password("password")
                .roles("ADMIN");
    }
@Override
protected void configure(HttpSecurity httpSecurity) throws Exception {
    httpSecurity
            .csrf()
            .disable()
            .authorizeRequests()
            .antMatchers("/register").not().fullyAuthenticated()
            .antMatchers("/admin/**").hasRole("ADMIN")
            .antMatchers("/news").hasRole("USER")
            .antMatchers("/", "/resources/**").permitAll()
            .anyRequest().authenticated()
            .and()
            .formLogin()
            .loginPage("/login")
            .defaultSuccessUrl("/")
            .permitAll()
            .and()
            .logout()
            .permitAll()
            .logoutSuccessUrl("/");
}

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
