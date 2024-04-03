//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Saar Bibla on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Oak Park, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 4) {
                    Image(systemName: "cloud.sun.bolt.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                HStack {
                    VStack {
                        Text("Tue")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding(.top)
                        Image(systemName: "sun.dust.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                        Text("74")
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Text("Wed")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding(.top)
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                        Text("64")
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                    }

                    
                }
                Spacer()
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
