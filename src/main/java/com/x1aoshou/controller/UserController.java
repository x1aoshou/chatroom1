package com.x1aoshou.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ??? on 2019/1/22.
 */
@RequestMapping("user")
@Controller
public class UserController {

    @RequestMapping("toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("toRegister")
    public String toRegister(){
        return "register";
    }

}
