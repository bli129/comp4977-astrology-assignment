//
//  AstrologyDetailView.swift
//  AstrologyApp
//
//  Created by Benny Li on 2024-09-28.
//

import SwiftUI

struct AstrologyDetailView: View {
    var zodiac: AstrologyData
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(zodiac.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(zodiac.date)
                .font(.headline)
                .padding(.bottom, 10)
            Image(zodiac.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.bottom, 10)
            Text(zodiac.description)
                .font(.body)
            Spacer()
        }
    }
}

#Preview {
    AstrologyDetailView(zodiac: DataModel.data[0])
}

