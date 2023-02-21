package com.qcby.controller;


import com.qcby.model.Emp;
import com.qcby.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {

    @Autowired(required = false)
    private EmpService accountService;

    /**
     * 处理超链接发送出来的请求
     *
     * @param model
     * @return
     */
    @RequestMapping(path = "/hello")
    public String sayHello(Model model) {
        System.out.println("入门方法执行了2...");


        // 向模型中添加属性msg与值，可以在html页面中取出并渲染
        List<Emp> all = accountService.findAll();
        for (Emp emp:all){
            System.out.println("======"+emp.toString());
        }
        model.addAttribute("msg", "hello,SpringMVC");
        // 配置了视图解析器后，写法
        return "suc";
    }
}
