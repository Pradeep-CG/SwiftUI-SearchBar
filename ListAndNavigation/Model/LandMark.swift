//
//  LandMark.swift
//  ListAndNavigation
//
//  Created by Pradeep on 20/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

struct City : Decodable {
    var cityId: Int
    var name: String
    var landmarks: [LandMarks]
}

struct LandMarks : Decodable {
    var landmarkId: Int
    var name: String
    var photo: String
    var description: String
}
