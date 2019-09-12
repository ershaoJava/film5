package com.service.impl;

import com.entity.Address;
import com.entity.AddressExample;
import com.mapper.AddressMapper;
import com.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description
 * @Author afei
 * @date:2019/8/21
 */
@Service(value = "addressService")
public class AddressServiceImpl implements AddressService{
    @Autowired
    AddressMapper addressMapper;

    @Override
    public List<Address> getAllAddr() {
        AddressExample example=new AddressExample();
        example.setOrderByClause("address_id asc");
        return addressMapper.selectByExample(example);
    }
}
