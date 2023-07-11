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
                BckImgView()
                VStack {
                    HeaderView()
                    OrderView(orders: orders)
                    MenuView()
                }.padding(.all).fontWeight(.bold)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
