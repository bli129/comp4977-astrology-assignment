import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(DataModel.data, id: \.id) { item in
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 10)
                            .cornerRadius(10)
                        
                        NavigationLink(destination: AstrologyDetailView(zodiac: item)) {
                            HStack {
                                Text(item.icon)
                                    .font(.largeTitle)
                                    .foregroundColor(.primary) // Neutral text color
                                
                                Text(item.name)
                                    .font(.headline)
                                    .foregroundColor(.primary) // Neutral text color
                                    .padding(.leading, 10)
                            }
                            .padding(.vertical, 10) // Add padding so text/icon sits comfortably on the strip
                        }
                    }
                    .listRowBackground(Color.clear) // Ensure list rows have a transparent background
                }
                .listStyle(PlainListStyle()) // Remove any extra styling from the list
                .background(Color.clear) // Make the list background transparent
            }
            .navigationTitle("Home")
            .toolbarBackground(themeBackgroundSecondary, for: .navigationBar) // Apply gradient to the navigation bar
            .toolbarBackground(.visible, for: .navigationBar) // Ensure the background is visible
            .background(themeBackgroundMain.edgesIgnoringSafeArea([.top, .leading, .trailing])) // Use the green background, excluding bottom
        }
        .background(themeBackgroundSecondary.edgesIgnoringSafeArea(.all)) // Gradient applied globally
    }
}

#Preview {
    HomeView()
}
