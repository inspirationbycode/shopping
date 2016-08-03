package com.shop.ws;

import com.shop.model.Cart;
import com.shop.model.User;
import com.shop.repository.CartRepository;
import com.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "cartws")
public class CartService {
    @Autowired
    CartRepository cartRepository;
    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = RequestMethod.POST)
    public void createCart(@RequestBody Cart cart) {
        cartRepository.save(cart);
    }


    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Cart> getCarts() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        User user = userRepository.findByEmail(name);
        return cartRepository.findByUserId(user.getId());
    }

    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    public Cart getCart(@PathVariable(value = "id") long id) {
        return cartRepository.findOne(id);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public Cart delete(@PathVariable(value = "id") long id) {
        cartRepository.delete(id);
        return new Cart();
    }
}
