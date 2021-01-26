//
//  ContentView.swift
//  SwiftUI-fullScreenCover
//
//  Created by terry on 2021/1/26.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented = false
    
    var body: some View {
        Button("Present!"){
            self.isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
//        .sheet(isPresented: $isPresented) {
//            FullScreenModalView()
//        }
    }
}

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is a modal view")
        }
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
