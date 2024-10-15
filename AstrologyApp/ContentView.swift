//
//  ContentView.swift
//  AstrologyApp
//
//  Created by Benny Li & Mika Manaligod on 2024-09-27.
//

import SwiftUI

// TODO:
// center icon and text
struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Home") }.tag(1) //TO DO: Change font size
            
            CalculatorView().tabItem{
                Text("Calculator").tag(2) }
            
            AboutView().tabItem{
                Text("About").tag(3) }
        }
    }
}

#Preview {
    ContentView()
}
