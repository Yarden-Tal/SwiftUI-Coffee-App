//
//  BckImgView.swift
//  Coffee App
//
//  Created by Yarden Tal on 11/07/2023.
//

import SwiftUI

struct BckImgView: View {
    var body: some View {
        Image("coffee").resizable().scaledToFill().opacity(0.5).grayscale(0.5).frame(width: .leastNormalMagnitude)
    }
}

struct BckImgView_Previews: PreviewProvider {
    static var previews: some View {
        BckImgView()
    }
}
