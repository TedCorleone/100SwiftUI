//
//  CircleImageView.swift
//  100SwiftUI-1
//
//  Created by terry on 2020/8/2.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("dalian")
            .resizable()
            .frame(width: 220, height: 220)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
