//
//  ContentView.swift
//  AstrologyApp
//
//  Created by Benny Li on 2024-09-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List(DataModel.data, id: \.id) { item in
                HStack {
                    Text(item.icon)
                    Text("\(item.name)")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
