//
//  SliderView.swift
//  100SwiftUI-5
//
//  Created by terry on 2020/8/12.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value:Double
    var label:String
    
    var body: some View {
        VStack {
            Slider(value: $value,in:0...255, step:1)
            Text("\(label): \(Int(value))")
        }.padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), label: "Label")
    }
}
