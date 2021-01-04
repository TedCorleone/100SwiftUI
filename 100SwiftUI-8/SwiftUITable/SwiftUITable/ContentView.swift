//
//  ContentView.swift
//  SwiftUITable
//
//  Created by terry on 2021/1/4.
//

import SwiftUI

struct ContentView: View {
    
    let data: [DataModel] = [
        .init(id: "0", name: "SteveJobs", imageName: "SteveJobs", age: "17", gender: "Male", teacher: "Terry"),
        .init(id: "1", name: "Satya Nadella", imageName: "Satya Nadella", age: "23", gender: "Male", teacher: "Terry"),
        .init(id: "2", name: "Jeff Bezos", imageName: "Jeff Bezos", age: "52", gender: "Female", teacher: "Terry"),
        .init(id: "3", name: "Tim Cook", imageName: "Tim Cook", age: "23", gender: "Male", teacher: "Terry")
    ]
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        Divider()
        Spacer()
        
        ScrollView(.horizontal, showsIndicators: false) {
            ForEach(data){ items in
                ItemView(data: items)
            }
            
            Spacer()
        }.padding(20)
        
//        ScrollView{
//            ForEach(data) { items in
//                CollectionView(data: items)
//            }
//        }
        Divider()
        
        
        Text("Hello, world!")
            .padding()
        
        Text("Hello, world!")
            .padding()
        
        Text("Hello, world!")
            .padding()
    }
}


struct ItemView: View {
    let data: DataModel
    var body: some View {
        HStack {
        
            VStack{
                Text(self.data.name)
            }.frame(minWidth: 120, maxWidth: 120, alignment: .leading)
            .padding()
             .border(Color.black, width: 1)
            
            Spacer()
            
            VStack{
                Text(self.data.imageName)
            }.frame(minWidth: 120, maxWidth: 120, alignment: .leading)
            .padding()
             .border(Color.black, width: 1)
            
            Spacer()
            
            VStack{
                Text(self.data.age)
            }.frame(minWidth: 50, maxWidth: 50, alignment: .leading)
            .padding()
             .border(Color.black, width: 1)
            
            Spacer()
            
            VStack{
                Text(self.data.gender)
            }.frame(minWidth: 100, maxWidth: 100, alignment: .leading)
            .padding()
             .border(Color.black, width: 1)
            
            Spacer()
            
            VStack{
                Text(self.data.teacher)
            }.frame(minWidth: 100, maxWidth: 100, alignment: .leading)
            .padding()
             .border(Color.black, width: 1)
        }
    }
}

struct CollectionView: View {
    let data: DataModel
    var body: some View {
        VStack {
            ScrollView{
                HStack {
                    Spacer()
                    Text(self.data.name)
                    Spacer()
                    Text(self.data.imageName)
                    Spacer()
                    Text(self.data.age)
                    Spacer()
                    Text(self.data.gender)
                    Spacer()
                }
            }
        }
    }
}

struct DataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
    let age: String
    let gender: String
    let teacher: String
}
