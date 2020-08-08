//
//  ContentView.swift
//  100SwiftUI-2
//
//  Created by terry on 2020/8/8.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Spicy Hot Pot")
                        .font(.system(size: 30))
                        .opacity(0.9)
                        .foregroundColor(.white)
                        .padding(.leading, 30)
                    Spacer()
                    Image(systemName: "heart.fill")
                        .font(.system(size: 30))
                        .opacity(0.9)
                        .foregroundColor(.white)
                        .padding(.trailing, 30.0)
                }
                Spacer()
                Text("Spicy Hot Pot is a common type of Chinese street food.")
                    .font(.system(size: 13))
                    .opacity(0.8)
                    .foregroundColor(Color.white)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
