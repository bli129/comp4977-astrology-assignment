//
//  AboutView.swift
//  AstrologyApp
//
//  Created by Mika M on 2024-10-01.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("Team Members")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Benny Li")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                    Text("A01315151")
                        .foregroundColor(.gray)
                }
                HStack {
                    Text("Mika Manaligod")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                    Text("A01332836")
                        .foregroundColor(.gray)
                }

            }
            .padding()
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
