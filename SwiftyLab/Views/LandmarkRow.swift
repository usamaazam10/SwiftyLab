//
//  LandmarkRow.swift
//  SwiftyLab
//
//  Created by Usama Azam on 26/12/2024.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

//#Preview("Turtle Rock") {
//    LandmarkRow(landmark: landmarks[0])
//}
//
//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}


#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
