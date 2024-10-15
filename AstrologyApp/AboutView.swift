import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                // Team member list with "Created By" and mustard lines
                VStack(spacing: 20) {
                    // "Created By" with mustard line
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 30) // Mustard line height
                            .cornerRadius(5)
                            .padding(.horizontal, 90) // Add padding for the line
                            .frame(maxWidth: .infinity) // Stretch mustard line to full width

                        HStack {
                            Text("Team Members")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                    }

                    // Benny Li with mustard line
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 10) // Mustard line height
                            .cornerRadius(5)
                            .padding(.horizontal, 5) // Add padding for the line
                            .frame(maxWidth: .infinity) // Make mustard line stretch to full width

                        HStack {
                            Text("Benny Li")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                            Spacer()
                            Text("[A01315151]")
                                .foregroundColor(.black)
                                .padding(.leading, 10)
                        }
                        .padding()
                    }

                    // Mika Manaligod with mustard line
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 10) // Mustard line height
                            .cornerRadius(5)
                            .padding(.horizontal, 5) // Add padding for the line
                            .frame(maxWidth: .infinity) // Make mustard line stretch to full width

                        HStack {
                            Text("Mika Manaligod")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                            Spacer()
                            Text("[A01332836]")
                                .foregroundColor(.black)
                                .padding(.leading, 10)
                        }
                        .padding()
                    }
                }
                .padding(.horizontal) // Optional padding around the team members
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Make the VStack fill available space
            }
            .navigationTitle("About")
            .toolbarBackground(themeBackgroundSecondary, for: .navigationBar) // Red background for the navigation bar
            .toolbarBackground(.visible, for: .navigationBar) // Ensure the red background is visible
            .background(themeBackgroundMain.edgesIgnoringSafeArea([.top, .leading, .trailing])) // Apply the green background only to top/sides, avoiding bottom
        }
        .background(themeBackgroundMain.edgesIgnoringSafeArea([.top, .leading, .trailing])) // Ensure green background covers only top and sides
    }
}

#Preview {
    AboutView()
}
