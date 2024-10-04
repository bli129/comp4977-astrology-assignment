import SwiftUI

// TODO: Make auto-nav with just submit
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
                
                // Submit button to calculate zodiac sign and trigger navigation
                Button("Submit") {
                    // Find the zodiac sign based on month and day
                    zodiacSign = dataModel.zodiacSign(for: selectedMonth, day: selectedDay)
                }
                .padding()
                
                // Display the correct zodiac name
                if let unwrappedZodiacSign = zodiacSign {
                    Text(unwrappedZodiacSign.name)
                    
                    // Force unwrap the zodiacSign before passing to NavigationLink
                    NavigationLink("Go to Detail", value: unwrappedZodiacSign)
                        .padding()
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle("Pick Month & Day")
            .navigationDestination(for: AstrologyData.self) { zodiac in
                AstrologyDetailView(zodiac: zodiac) // Force unwrap avoided by using non-optional type
            }
        }
    }
}
