//
//  LandmarkDetails.swift
//  SwiftyLab
//
//  Created by Usama Azam on 26/12/2024.
//

import SwiftUI

struct LandmarkDetails: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.locationCoordinates)
                .frame(height: 300.0)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("Aboud \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetails(landmark: landmarks[0])
}
