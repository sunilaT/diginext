package com.musichub.service;


import com.musichub.model.Cart;
import com.musichub.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
