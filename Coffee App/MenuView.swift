//
//  MenuView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(1...15, id: \.self) { item in
                MenuRowView(item: item)
            }
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
