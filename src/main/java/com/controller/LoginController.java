package com.controller;

import com.entity.Customer;
import com.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * @Description
 * @Author afei
 * @date:2019/7/22
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    CustomerService customerService;

    @RequestMapping("/user")
    public String login(@ModelAttribute(value = "customer") @Valid Customer cus, BindingResult bindingResult, HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            List<FieldError> fieldErrors = bindingResult.getFieldErrors();
            for (FieldError field : fieldErrors) {
                System.out.println(field.getField() + ":" + field.getDefaultMessage());
            }
            return "login";
        }
        List<Customer> customers = customerService.login(cus);
        if (customers.size() > 0) {
            request.getSession().setAttribute("customer", customers.get(0));
            return "index";
        } else {
            bindingResult.rejectValue("firstName","customer.firstName.none","用户名不存在");
        }
        return "login";
    }
}
