//
//  WeatherButton.swift
//  SwiftUI-WeatherApp
//
//  Created by Saar Bibla on 4/3/24.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    
    var body: some View {
        Text(title)
            .frame(minWidth: 280, minHeight: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .cornerRadius(10)
    }
}

#Preview {
    WeatherButton(title: "Test Button", textColor: .white, backgroundColor: .blue)
}
