//
//  MenuItemView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct MenuItemView: View {
    @State private var didAddItem: Bool = false
    var body: some View {
        VStack {
            if let image = UIImage(named: "drink") {
                Image(uiImage: image).cornerRadius(10).scaledToFit()
            }
            else {
                Image("fallback")
            }
            VStack(alignment: .leading) {
                Text("Espresso").font(.title).fontWeight(.semibold)
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.").font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button(){
                didAddItem = true
            } label: {
                Spacer()
                Text(12.99, format: .currency(code: "USD")).bold().foregroundColor(.white)
                Image(systemName: didAddItem ? "cart.fill" : "cart.badge.plus").font(.title).foregroundColor(.white)
                Spacer()
            }.padding().background(.orange, in:Capsule()).padding(16)
//                Image(systemName: didAddItem ? "cart" : "menucard").font(.title)
//             .padding(8).foregroundColor(.white).background(.orange, in: Circle()).shadow(radius: 1)
            }
        }
    }


struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
