package com.hoainong.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hoainong.mockdata.MockdataItem;
import com.hoainong.service.ShoppingCartService;

@Controller
public class ProductController {
    @Autowired
    ShoppingCartService shoppingCartService;
    
    @GetMapping("/products")
    public String showProducts(Model model) {
        model.addAttribute("items", MockdataItem.items.values());
        return "products";
    }
    
    @PostMapping("/products")
    public String addToCart(@RequestParam("itemId") int itemId, @RequestParam("quantity") int quantity) {
        if (!shoppingCartService.getItems().contains(shoppingCartService.get(itemId))) {
            shoppingCartService.add(itemId);									
        } else {
            // Lấy số lượng hiện tại của sản phẩm
            int currentQuantity = shoppingCartService.get(itemId).getQty();
            
            // Tăng số lượng lên 2 lần
            int newQuantity = currentQuantity + quantity;
            
            // Cập nhật số lượng của sản phẩm trong giỏ hàng
            shoppingCartService.update(itemId, newQuantity);	
        }
        
        return "redirect:/products";
    }
}

