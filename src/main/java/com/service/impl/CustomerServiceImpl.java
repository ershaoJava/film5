package com.service.impl;

import com.entity.Address;
import com.entity.AddressExample;
import com.entity.Customer;
import com.entity.CustomerExample;
import com.github.pagehelper.Page;
import com.mapper.AddressMapper;
import com.mapper.CustomerMapper;
import com.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description
 * @Author afei
 * @date:2019/7/22
 */
@Service(value = "customerService")
public class CustomerServiceImpl implements CustomerService{
    @Autowired
    CustomerMapper customerMapper;

    @Override
    public List<Customer> login(Customer customer) {
        CustomerExample customerExample=new CustomerExample();
        customerExample.createCriteria().andFirstNameEqualTo(customer.getFirstName());
        List<Customer> customerList=customerMapper.selectByExample(customerExample);
        return customerList;
    }

    @Override
    public Page<Customer> getAllCus(){
        CustomerExample customerExample=new CustomerExample();
        customerExample.setOrderByClause("customer_id asc");
        return customerMapper.getAllCus(customerExample);
    }

    @Override
    public int update(Customer customer) {
        return customerMapper.updateByPrimaryKey(customer);
    }

    @Override
    public int delCus(Integer customerId) {
        return customerMapper.deleteByPrimaryKey(Short.valueOf(customerId.toString()));
    }

    @Override
    public int addCus(Customer customer) {
        return customerMapper.insertSelective(customer);
    }

}
