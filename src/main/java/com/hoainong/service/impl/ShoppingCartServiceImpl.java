package com.hoainong.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.hoainong.mockdata.MockdataItem;
import com.hoainong.model.Item;
import com.hoainong.service.ShoppingCartService;
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService{
	
	Map<Integer, Item> map = new HashMap<>();
	@Override
	public Item add(Integer id) {
		Set<Integer> set = MockdataItem.items.keySet();
		for (Integer key : set) {
			if(MockdataItem.items.get(key).getId() == id) {
				map.put(key, MockdataItem.items.get(key));
				map.get(key).setQty(1);
				return MockdataItem.items.get(key);
			}
		}
		return null;
	}

	@Override
	public void remove(Integer id) {
		Set<Integer> set = map.keySet();
		for (Integer key : set) {
			if(map.get(key).getId() == id) {
				set.remove(key);
				break;
			}
		}
		
	}

	@Override
	public Item update(Integer id, int qty) {
		Set<Integer> set = map.keySet();
		for (Integer key : set) {
			if(map.get(key).getId() == id) {
				map.get(key).setQty(qty);
				map.replace((Integer) key, map.get(key));
				return map.get(key);
			}
		}
		return null;
	}

	@Override
	public void clear() {
		map.clear();
		
	}

	@Override
	public Collection<Item> getItems() {
		return map.values();
	}

	@Override
	public int getCount() {
		int count = 0;
		Set<Integer> set = map.keySet();
		for (Integer key : set) {
			count+=map.get(key).getQty();
		}
		return count;

	}

	@Override
	public double getAmount() {
		int amount = 0;
		Set<Integer> set = map.keySet();
		for (Integer key : set) {
			amount+=(map.get(key).getQty()*map.get(key).getPrice());
		}
		return amount;

	}

	@Override
	public Item get(Integer id) {
		Set<Integer> set = map.keySet();
		for (Integer key : set) {
			if(map.get(key).getId() == id) {
				return map.get(key);
			}			
		}
		return null;
	}

}
