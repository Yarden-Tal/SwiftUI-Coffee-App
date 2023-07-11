//
//  HeaderView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Text("Order Coffee!").font(.title).foregroundColor(.black).fontWeight(.heavy)
        Text("Fresh & delicious").font(.title2).foregroundColor(.gray).fontWeight(.heavy)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}