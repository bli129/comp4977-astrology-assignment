//
//  AstrologyDetailView.swift
//  AstrologyApp
//
//  Created by Benny Li & Mika Manaligod on 2024-09-28.
//

import SwiftUI
//TODO: display date properly

struct AstrologyDetailView: View {
    var zodiac: AstrologyData
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text(zodiac.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
//                Text(zodiac.dateStart)
//                    .font(.headline)
//                    .padding(.bottom, 10)
                Image(zodiac.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 10)
                Text(zodiac.description)
                    .font(.body)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    AstrologyDetailView(zodiac: DataModel.data[0])
}

