//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Saar Bibla on 4/2/24.
//

import SwiftUI

struct WeatherMain: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "Oak Park, CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.bolt.fill",
                                      temperature: 76)
                
                HStack(spacing: 22) {
                    
                    WeatherDayView(dayOfWeek: Date.now.formatted(.dateTime.weekday()),
                                   imageName: "cloud.sun.fill",
                                   temperture: 70)
                    WeatherDayView(dayOfWeek: Date.now.addingTimeInterval(86400).formatted(.dateTime.weekday()),
                                   imageName: "sun.max.fill",
                                   temperture: 74)
                    WeatherDayView(dayOfWeek: Date.now.addingTimeInterval(86400*2).formatted(.dateTime.weekday()),
                                   imageName: "snow",
                                   temperture: 24)
                    WeatherDayView(dayOfWeek: Date.now.addingTimeInterval(86400*3).formatted(.dateTime.weekday()),
                                   imageName: "cloud.sleet.fill",
                                   temperture: 33)
                    WeatherDayView(dayOfWeek: Date.now.addingTimeInterval(86400*4).formatted(.dateTime.weekday()),
                                   imageName: "sunset.fill",
                                   temperture: 45)
                    WeatherDayView(dayOfWeek: Date.now.addingTimeInterval(86400*5).formatted(.dateTime.weekday()),
                                   imageName: "wind.snow",
                                   temperture: 68)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .white,
                                  backgroundColor: .mint)
                }
                
                Spacer()
                    
            }
        }
    }
}

#Preview {
    WeatherMain()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperture: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding(.top)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.pink, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperture)")
                .font(.system(size: 28))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea(.all)
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


