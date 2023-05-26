package com.hoainong.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
	private Integer id;
	private String name;
	private int price;
	private int qty = 1;
	private String img;
}

