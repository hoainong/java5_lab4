package com.hoainong.mockdata;

import java.util.HashMap;
import java.util.Map;
import com.hoainong.model.Item;
public class MockdataItem {
    public static Map<Integer, Item> items = new HashMap<>();

    static {
        items.put(1, new Item(1, "iphone 14", 2000, 0,"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-den-thumb-600x600.jpg"));
        items.put(2, new Item(2, "iphone 13", 1500, 0,"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-blue-1-600x600.jpg"));
        items.put(3, new Item(3, "iphone 12", 1200, 0,"https://cdn.nguyenkimmall.com/images/detailed/697/10047698-dien-thoai-iphone-12-64gb-den-1.jpg"));
        items.put(4, new Item(4, "iphone 11", 1000, 0,"https://www.xtmobile.vn/vnt_upload/product/12_2021/thumbs/(600x600)_crop_iphone-11-pro-max-256gb-like-new.jpg"));
        items.put(5, new Item(5, "iphone X", 800, 0,"https://product.hstatic.net/200000489025/product/thumb-x_7d91aa4f8d5b48a1ba6720bbaee9238f.png"));
        items.put(6, new Item(6, "iphone 8", 500, 0,"https://cdn.tgdd.vn/Products/Images/42/114113/iphone-8-64gb-hh-600x600.jpg"));
    }
}

