package com.musichub.service;


import com.musichub.model.CustomerOrder;

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
