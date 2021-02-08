//
//  Home.swift
//  FruitMart
//
//  Created by Giftbot on 2020/03/02.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

struct Home: View {
    let store: Store
    
  var body: some View {
    NavigationView {
        if #available(iOS 14.0, *) {
            List(store.products) { product in
                NavigationLink(
                    destination: ProductDetailView(product: product)) {
                    ProductRow(product: product)
                }
            }.navigationTitle("과일마트")
        } else {
            // Fallback on earlier versions
        }
    }
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    Home(store: Store())
        .previewDevice("iPhone 11 Pro")
  }
}
