import SwiftUI

struct CalculatorView: View {
    @State private var selectedMonth = 1
    @State private var selectedDay = 1
    @State private var zodiacSign: AstrologyData? // State for selected zodiac sign

    let dataModel = DataModel()

    let months = Array(1 ... 12)
    let days = Array(1 ... 31)

    var body: some View {
        NavigationStack {
            VStack {
                // Month picker
                Picker("Select Month", selection: $selectedMonth) {
                    ForEach(1 ..< 13) { month in
                        Text(Calendar.current.monthSymbols[month - 1]).tag(month)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding()

                // Day picker
                Picker("Select Day", selection: $selectedDay) {
                    ForEach(1 ..< 32) { day in
                        Text("\(day)").tag(day)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding()

                // NavigationLink that triggers the zodiac calculation and navigation
                NavigationLink(
                    destination: {
                        if let unwrappedZodiacSign = zodiacSign {
                            AstrologyDetailView(zodiac: unwrappedZodiacSign)
                        }
                    },
                    label: {
                        Text("Calculate Zodiac") // This acts as your trigger
                    }
                )
                .simultaneousGesture(TapGesture().onEnded {
                    // Trigger the zodiac calculation before navigation
                    zodiacSign = dataModel.zodiacSign(for: selectedMonth, day: selectedDay)
                })
                .padding()
                
            }
            .navigationTitle("Pick Month & Day")
        }
    }
}
