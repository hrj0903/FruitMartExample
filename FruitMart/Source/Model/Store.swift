//
//  Store.swift
//  FruitMart
//
//  Created by hrj on 2021/02/08.
//  Copyright © 2021 Giftbot. All rights reserved.
//

import Foundation

final class Store {
    var products: [Product]
    
    init(filename: String = "ProductData.json") {
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}
