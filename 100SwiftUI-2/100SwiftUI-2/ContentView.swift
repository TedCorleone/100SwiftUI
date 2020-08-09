//
//  ContentView.swift
//  100SwiftUI-2
//
//  Created by terry on 2020/8/8.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var likedNumber = 999
    
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
                    
                    Button(action: {
                        self.isHearted.toggle()
                        if self.isHearted {
                            self.likedNumber += 1
                        } else {
                            self.likedNumber -= 1
                        }
                    }) {
                        if isHearted {
                            Image(systemName: "heart.fill")
                                .font(.system(size: 20))
                                .opacity(0.9)
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "heart")
                                .font(.system(size: 20))
                                .opacity(0.9)
                                .foregroundColor(.white)
                        }
                    }
                    
                    Text(String(self.likedNumber))
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
