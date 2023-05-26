package com.hoainong.mockdata;

import java.util.ArrayList;
import java.util.List;

import com.hoainong.model.User;

public class MockdataUser {
	public static List<User> listUsers = new ArrayList<>();
	static {
		listUsers.add(new User("Hoai", "123"));
		listUsers.add(new User("poly", "123"));
	}
}
