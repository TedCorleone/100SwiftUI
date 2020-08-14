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
                        } else {
                            Image(systemName: "heart")
                                .font(.system(size: 20))
                        }
                    }
                    
                    Text(String(self.likedNumber))
                       .padding(.trailing, 30.0)
                    
                }.opacity(0.9).foregroundColor(.white)
                
                Spacer()
                
                Text("Spicy Hot Pot is a common type of Chinese street food.")
                    .font(.system(size: 13))
                    .opacity(0.8)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
