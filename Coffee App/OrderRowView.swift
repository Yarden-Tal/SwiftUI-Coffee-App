//
//  OrderRowView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        HStack {
              Text("Your order item").foregroundColor(.white)
              Spacer()
            Text(10.9, format: .currency(code: "USD")).foregroundColor(.white)
          }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
