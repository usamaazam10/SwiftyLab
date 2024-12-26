//
//  CircleImage.swift
//  Swifty Lab
//
//  Created by Usama Azam on 24/12/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(.circle)
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
