//
//  ContentView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1]
    var body: some View {
            ZStack {
                
                // Background img
                Image("coffee").resizable().scaledToFill().opacity(0.5).grayscale(0.5).frame(width: .leastNormalMagnitude)
                // Title & Subtitle
                VStack {
                    Text("Order Coffee!").font(.title).foregroundColor(.black).fontWeight(.heavy)
                    Text("Fresh & delicious").font(.title2).foregroundColor(.gray).fontWeight(.heavy)
                    // Cart icon
                    Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill").padding(.vertical)
                    // Order details
                    ScrollView {
                        ForEach(orders, id: \.self) { order in
                            HStack {
                                  Text("Your order item").foregroundColor(.white)
                                  Spacer()
                                Text(10.9, format: .currency(code: "USD")).foregroundColor(.white)
                              }
                        }
                    // Items
                    }
                    ScrollView {
                        HStack {
                            Text("Espresso").foregroundColor(.white)
                            Spacer()
                            if let img = UIImage(named: "drink") {
                                Image(uiImage: img).resizable().scaledToFit().frame(width: 50)
                            }
                            else {
                                Image("fallback").resizable().scaledToFit().frame(width: 50).clipShape(Circle())
                            }
                        }
                        Spacer()
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
