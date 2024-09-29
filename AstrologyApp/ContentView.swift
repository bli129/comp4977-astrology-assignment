//
//  ContentView.swift
//  AstrologyApp
//
//  Created by Benny Li & Mika Manaligod on 2024-09-27.
//

import SwiftUI

struct ContentView: View {
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
            .navigationTitle("Zodiac Signs")
        }
    }
}

#Preview {
    ContentView()
}
