package com.controller;

import com.entity.Address;
import com.entity.Customer;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.AddressService;
import com.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @Description
 * @Author afei
 * @date:2019-7-29
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    @Qualifier("customerService")
    CustomerService customerService;
    @Autowired
    @Qualifier("addressService")
    AddressService addressService;


    @ResponseBody
    @RequestMapping("/getAllCus")
    public HashMap<String,Object> getAllCus(@RequestParam("currentPage") Integer currentPage){
        PageHelper.startPage(currentPage,7);
        Page<Customer> customers=customerService.getAllCus();
        PageInfo pageInfo=new PageInfo(customers,6);
        HashMap<String,Object> hashMap=new HashMap<String,Object>();
        hashMap.put("pageInfo",pageInfo);
        return hashMap;
    }

    @ResponseBody
    @RequestMapping("/goUpdate")
    public HashMap<String,Object> goUpdate(Customer customer){
        customer.setLastUpdate(new Date());
        int line=customerService.update(customer);
        HashMap<String,Object> hashMap=new HashMap<String,Object>();
        hashMap.put("line",line);
        return hashMap;
    }

    @ResponseBody
    @RequestMapping("/getAllAddr")
    public HashMap<String,Object> getAllAddr(){
        List<Address> addresses=addressService.getAllAddr();
        HashMap<String,Object> hashMap=new HashMap<String,Object>();
        hashMap.put("addresses",addresses);
        return hashMap;
    }

    @ResponseBody
    @RequestMapping("/delCus")
    public HashMap<String,Object> delCus(@RequestParam("customerId") Integer customerId){
        HashMap<String,Object> hashMap=new HashMap<String,Object>();
        int line=customerService.delCus(customerId);
        hashMap.put("line",line);
        return hashMap;
    }


    @RequestMapping("/delMe")
    public String delMe(@RequestParam("customerId") Integer customerId,HttpServletRequest request){
        int line=customerService.delCus(customerId);
        if(line==1) return "redirect:/customer/loginAgain";
        else {
            request.setAttribute("tick-del-msg","N");
            return "index";
        }
    }

    @RequestMapping("/loginAgain")
    public String loginAgain(HttpServletRequest request){
        request.getSession().removeAttribute("customer");
        return "login";
    }

    @ResponseBody
    @RequestMapping("/addCus")
    public HashMap<String,Object> addCus(Customer customer){
        int line=customerService.addCus(customer);
        HashMap<String,Object> hashMap=new HashMap<String,Object>();
        hashMap.put("line",line);
        return hashMap;
    }

}
