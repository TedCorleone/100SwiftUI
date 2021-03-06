//
//  ContentView.swift
//  100SwiftUI-4
//
//  Created by terry on 2020/8/10.
//  Copyright © 2020 terry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols = ["orange", "banana", "strawberry"]
    @State private var backgrounds = [Color.white, Color.white, Color.white]
    @State private var numbers = [0,1,2]
    @State private var credits = 1000
    
    private var betAmount = 5
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                Text("Credits:" + String(credits))
                    .foregroundColor(.black)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
//                    for index in 0...symbols.count {
//                        CardView(imgName: symbols[numbers[index]])
//                    }
                    
                    CardView(symbol: $symbols[numbers[0]], backgrounds: $backgrounds[0])
                    
                    CardView(symbol: $symbols[numbers[1]], backgrounds: $backgrounds[1])
                    
                    CardView(symbol: $symbols[numbers[2]], backgrounds: $backgrounds[2])
                    
                                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    self.backgrounds = self.backgrounds.map { _ in
                        Color.white
                    }
                    
                    self.numbers = self.numbers.map({ _ in
                        Int.random(in: 0...self.symbols.count - 1)
                    })
                    
                    if self.numbers[0] == self.numbers[1] &&
                        self.numbers[1] == self.numbers[2] {
                        
                        self.backgrounds = self.backgrounds.map { _ in
                            Color.green
                        }
                        
                        self.credits += self.betAmount * 10
                    } else {
                        self.credits -= self.betAmount
                    }
                    
                }) {
                    Text("Spin")
                    .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding(.horizontal, 30)
                        .background(Color.pink)
                    .cornerRadius(20)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
