//
//  ContentView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1]
    @State private var doShowOrders: Bool = true
    var body: some View {
            ZStack {
                // Background img
                BckImgView()
                VStack {
                    HeaderView()
                    MenuCartBtn(doShowOrders: $doShowOrders)
                    if (doShowOrders) {
                        OrderView(orders: orders)
                    } else {
                        MenuItemView().padding(5).background(Color.gray.opacity(0.7))
                        MenuView()
                    }
                }.padding(.all).fontWeight(.bold)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
