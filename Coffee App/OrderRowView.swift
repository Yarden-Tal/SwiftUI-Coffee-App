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
        VStack {
            HStack {
                Text("Your order item").foregroundColor(.black)
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format:.number)
                Text(10.9, format: .currency(code: "USD")).foregroundColor(.black)
                Spacer()
                Text(10.9, format: .currency(code: "USD")).foregroundColor(.black).fontWeight(.bold)
              }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
