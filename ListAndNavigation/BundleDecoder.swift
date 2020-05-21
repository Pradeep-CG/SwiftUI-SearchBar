//
//  BundleDecoder.swift
//  ListAndNavigation
//
//  Created by Pradeep on 20/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

struct BundleDecoder {
    
    static func decodeLandmarkBundleJson() -> [City]{
        
        let landmarkjsonPath = Bundle.main.path(forResource: "landmarks", ofType: "json")
        let landmarkData = try! Data(contentsOf: URL(fileURLWithPath: landmarkjsonPath!), options: .alwaysMapped)
        return try! JSONDecoder().decode([City].self, from: landmarkData)
    }
}
