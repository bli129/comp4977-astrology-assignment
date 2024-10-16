import SwiftUI

struct CalculatorView: View {
    @State private var selectedMonth = 1
    @State private var selectedDay = 1
    @State private var zodiacSign: AstrologyData? // State for selected zodiac sign

    let dataModel = DataModel()

    let months = Array(1 ... 12)
    let days = Array(1 ... 31)

    var body: some View {
        NavigationView {
            ScrollView { // Use ScrollView instead of VStack to handle dynamic content
                VStack(spacing: 20) {
                    // ZStack to add mustard line behind the "Month" picker
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 10) // Thin mustard line
                            .cornerRadius(5)
                            .padding(.horizontal, 40)

                        Picker("Select Month", selection: $selectedMonth) {
                            ForEach(1 ..< 13) { month in
                                Text(Calendar.current.monthSymbols[month - 1]).tag(month)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .padding()
                    }
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 10)
                            .cornerRadius(5)
                            .padding(.horizontal, 40)

                        Picker("Select Day", selection: $selectedDay) {
                            ForEach(1 ..< 32) { day in
                                Text("\(day)").tag(day)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .padding()
                    }

                    // ZStack to add the mustard line behind the "Calculate Zodiac" button
                    ZStack {
                        themeBackgroundThird
                            .frame(height: 10) // Thin mustard line behind the button
                            .cornerRadius(5) // Optional: Round the corners of the line
                            .padding(.horizontal, 40) // Add padding to control width of the line

                        // NavigationLink that triggers the zodiac calculation and navigation
                        NavigationLink(
                            destination: {
                                if let unwrappedZodiacSign = zodiacSign {
                                    AstrologyDetailView(zodiac: unwrappedZodiacSign)
                                }
                            },
                            label: {
                                Text("Calculate Zodiac")
                                    .font(.headline)
                                    .foregroundColor(.primary) // Button text color
                            }
                        )
                        .simultaneousGesture(TapGesture().onEnded {
                            // Trigger the zodiac calculation before navigation
                            zodiacSign = dataModel.zodiacSign(for: selectedMonth, day: selectedDay)
                        })
                        .padding()
                    }
                }
                .navigationTitle("Pick Month & Day")
            }
            .toolbarBackground(themeBackgroundSecondary, for: .navigationBar) // Apply the red background to the navigation bar
            .toolbarBackground(.visible, for: .navigationBar) // Ensure the red background is visible
            .background(themeBackgroundMain.edgesIgnoringSafeArea([.top, .leading, .trailing])) // Ensure the green background covers top, sides, but not bottom
        }
        .background(themeBackgroundSecondary.edgesIgnoringSafeArea(.all)) // Red background for the entire view
        .edgesIgnoringSafeArea([.top, .leading, .trailing]) // Ignore safe areas on top and sides, but leave the bottom for TabView
    }
}

#Preview {
    CalculatorView()
}
