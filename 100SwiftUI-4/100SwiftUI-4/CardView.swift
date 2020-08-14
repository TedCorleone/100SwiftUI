//
//  CardView.swift
//  100SwiftUI-4
//
//  Created by terry on 2020/8/14.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @Binding var symbol: String
    @Binding var backgrounds: Color
    
    var body: some View {
        Image(symbol)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .background(backgrounds.opacity(0.5))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("orange"), backgrounds: Binding.constant(Color.white))
    }
}
