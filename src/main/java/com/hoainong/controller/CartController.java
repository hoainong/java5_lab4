package com.hoainong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hoainong.model.Item;
import com.hoainong.service.ParamService;
import com.hoainong.service.ShoppingCartService;

@Controller
public class CartController {
	@Autowired
	ShoppingCartService serviceshopping;
	@Autowired
	ParamService paramService;
	
	@GetMapping("/cart")
	public String cart(Model model) {
	    int id = paramService.getInt("itemId", 0);
	    int qty = paramService.getInt("quantity", 1);
	    Item updatedItem = serviceshopping.update(id, qty);
	    model.addAttribute("tong", serviceshopping.getAmount());
	    model.addAttribute("cart", serviceshopping.getItems());
	    model.addAttribute("updatedItem", updatedItem); // Thêm đối tượng đã cập nhật vào Model
	    return "cart";
	}
	
	@PostMapping("/cart/update")
	public String updateCart(@RequestParam("itemId") int itemId, @RequestParam("quantity") int quantity) {
	    Item updatedItem = serviceshopping.update(itemId, quantity);
	    return "redirect:/cart";
	}
	@PostMapping("/cart/remove")
	public String removeCart(@RequestParam("itemId") int itemId) {
	     serviceshopping.remove(itemId);
	    return "redirect:/cart";
	}
	@PostMapping("/cart/clean")
	public String cleanCart() {
	     serviceshopping.clear();
	    return "redirect:/cart";
	}
}

