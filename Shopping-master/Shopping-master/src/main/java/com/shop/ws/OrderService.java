package com.shop.ws;

import com.shop.model.Orderb;
import com.shop.model.User;
import com.shop.repository.OrderRepository;
import com.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "orderws")
public class OrderService {
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = RequestMethod.POST)
    public void createOrder(@RequestBody Orderb order) {
        orderRepository.save(order);
    }

    @RequestMapping(method = RequestMethod.GET)
    public Iterable<Orderb> getOrder() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        User user = userRepository.findByEmail(name);
        return orderRepository.findByUserId(user.getId());
    }
}
