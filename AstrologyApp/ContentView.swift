//
//  ContentView.swift
//  AstrologyApp
//
//  Created by Benny Li & Mika Manaligod on 2024-09-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                        .font(.system(size: 24))
                }
            }.tag(1)
            
            CalculatorView().tabItem {
                VStack {
                    Image(systemName: "plus.circle")
                    Text("Calculator")
                        .font(.system(size: 24))
                }
            }.tag(2)
            
            AboutView().tabItem {
                VStack {
                    Image(systemName: "info.circle")
                    Text("About")
                        .font(.system(size: 24))
                }
            }.tag(3)
        }
    }
}

#Preview {
    ContentView()
}
