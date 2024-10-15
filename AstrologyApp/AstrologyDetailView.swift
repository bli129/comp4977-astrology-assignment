import SwiftUI

struct AstrologyDetailView: View {
    var zodiac: AstrologyData
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text(zodiac.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
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
        .background(themeBackgroundDetail.edgesIgnoringSafeArea([.top, .leading, .trailing])) // Apply ocean cyan gradient only to top and sides
    }
}

#Preview {
    AstrologyDetailView(zodiac: DataModel.data[0])
}
