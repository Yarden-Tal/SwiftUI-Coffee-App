//
//  MenuRowView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack {
            Text("Espresso").foregroundColor(.black)
            Spacer()
            if let img = UIImage(named: "drink") {
                Image(uiImage: img).resizable().scaledToFit().frame(width: 50)
            }
            else {
                Image("fallback").resizable().scaledToFit().frame(width: 50).clipShape(Circle())
            }
            RatingsView(rating: 4)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: 2)
    }
}
