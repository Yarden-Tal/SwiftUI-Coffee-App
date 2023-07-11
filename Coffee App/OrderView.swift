//
//  OrderView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    var body: some View {
        Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill").padding(.vertical)
        // Order details
        ScrollView {
            ForEach(orders, id: \.self) { order in
                OrderRowView(order: order)
            }
        // Items
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1])
    }
}
