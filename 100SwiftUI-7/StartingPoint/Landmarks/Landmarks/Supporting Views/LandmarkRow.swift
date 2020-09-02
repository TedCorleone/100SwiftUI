//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by terry on 2020/8/23.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width:50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .imageScale(.medium)
            }
        }.padding(.leading, 10)
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData.first!)
            LandmarkRow(landmark: landmarkData.first!)
        }.previewLayout(.fixed(width: 300, height: 70))
        
        
    }
}
