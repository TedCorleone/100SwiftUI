//
//  UserData.swift
//  Landmarks
//
//  Created by terry on 2020/9/2.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserData : ObservableObject {
    @Published var showFavoritesOnly = false;
    @Published var landmarks = landmarkData;
}
