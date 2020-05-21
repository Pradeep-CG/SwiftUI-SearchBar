//
//  LandMarkRow.swift
//  ListAndNavigation
//
//  Created by Pradeep on 20/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import SwiftUI

struct LandMarkRow: View {
    
    var landMark: LandMarks
    
    var body: some View {
        
        HStack{
            Image(landMark.photo)
            .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            Text(landMark.name)
            Spacer()
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landMark: LandMarks(landmarkId: 1, name: "test", photo: "goi", description: "test"))
    }
}
