////
////  MenuCartBtn.swift
////  Coffee App
////
////  Created by Yarden Tal on 08/08/2023.
////
//
import SwiftUI

struct MenuCartBtn: View {
    @Binding var doShowOrders: Bool
    var body: some View {
        Button(){
            doShowOrders.toggle()
        } label: {
            Image(systemName: doShowOrders ? "cart" : "menucard").font(.title)
        }.padding(8).foregroundColor(.white).background(.orange, in: Circle()).shadow(radius: 1)
    }
}

struct MenuCartBtn_Previews: PreviewProvider {
    static var previews: some View {
        MenuCartBtn(doShowOrders: .constant(true))
    }
}
