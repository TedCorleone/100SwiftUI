//
//  ContentView.swift
//  100SwiftUI-3
//
//  Created by terry on 2020/8/8.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
            Image("yangshuo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
                
            Text("Yangshuo 阳朔")
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .font(.largeTitle)
                .shadow(color: .black, radius: 0.1, x: 0.5, y: 0.5)
            
            Text("A county under the jurisdiction of Guilin City, surrounded by karst peaks and bordered on one side by the Li River.")
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.01, x: 0.5, y: 0.5)
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
