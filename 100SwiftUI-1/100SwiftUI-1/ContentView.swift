//
//  ContentView.swift
//  100SwiftUI-1
//
//  Created by terry on 2020/8/2.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImageView()
                .offset(y: -150)
                .padding(.bottom, -150)
            
            VStack (alignment: .leading) {
                Text("Dalian")
                    .font(.title)
                
                HStack {
                    Text("Most beautiful city in China!")
                        .font(.subheadline)
                    Spacer()
                    Text("LiaoNing")
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
