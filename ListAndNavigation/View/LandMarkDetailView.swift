//
//  LandMarkDetailView.swift
//  ListAndNavigation
//
//  Created by Pradeep on 21/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import SwiftUI

struct LandMarkDetailView: View {
    var landMark: LandMarks
    
    var body: some View {
        ScrollView{
            VStack{
                    Image(landMark.photo)
                    .resizable()
                    .scaledToFit()
                    
                    Text(landMark.description)
                    
                    Spacer()
                }
            .padding()
        }
        
        .navigationBarTitle(Text(landMark.name), displayMode: .inline)
    }
}

struct LandMarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetailView(landMark: LandMarks(landmarkId: 1, name: "", photo: "", description: ""))
    }
}
