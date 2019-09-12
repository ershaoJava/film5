package com.service;

import com.entity.Address;
import com.entity.Customer;
import com.github.pagehelper.Page;

import java.util.List;

public interface CustomerService {
    public List<Customer> login(Customer customer);
    public Page<Customer> getAllCus();
    public int update(Customer customer);
    public int delCus(Integer customerId);
    public int addCus(Customer customer);
}
