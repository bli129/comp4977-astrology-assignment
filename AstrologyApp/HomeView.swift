//
//  HomeView.swift
//  AstrologyApp
//
//  Created by Mika M on 2024-10-01.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(DataModel.data, id: \.id) { item in
                    NavigationLink(destination: AstrologyDetailView(zodiac: item)) {
                        HStack {
                            Text(item.icon)
                            Text("\(item.name)")
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
    
}

#Preview {
    HomeView()
}
