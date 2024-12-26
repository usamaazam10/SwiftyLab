//
//  ContentView.swift
//  Swifty Lab
//
//  Created by Usama Azam on 24/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300.0)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("Aboud Turtle Rock")
                    .font(.title2)
                
                Text("Turtle Rock is a residential area home to several parks and golf courses, as well as Concordia University Irvine.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
