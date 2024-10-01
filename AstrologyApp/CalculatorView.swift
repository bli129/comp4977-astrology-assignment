//
//  CalculatorView.swift
//  AstrologyApp
//
//  Created by Mika M on 2024-10-01.
//

import SwiftUI
// TODO: style picker
// TODO: add navigation
//TODO: fix submit button to pass data to view properly

import SwiftUI

struct CalculatorView: View {
    // Create state variables for month and day
    @State private var selectedMonth = 1
    @State private var selectedDay = 1
    @State private var zodiacSign: AstrologyData? // State for selected zodiac sign
    @State private var isNavigating = false // Not needed anymore

    let dataModel = DataModel()

    // Arrays for months and days
    let months = Array(1 ... 12)
    let days = Array(1 ... 31)

    var body: some View {
        NavigationStack {
            VStack {
                // Custom picker for selecting the month
                Picker("Select Month", selection: $selectedMonth) {
                    ForEach(1 ..< 13) { month in
                        Text(Calendar.current.monthSymbols[month - 1]).tag(month)
                    }
                }
                .pickerStyle(WheelPickerStyle()) // Display as a wheel picker
                .padding()

                // Custom picker for selecting the day
                Picker("Select Day", selection: $selectedDay) {
                    ForEach(1 ..< 32) { day in
                        Text("\(day)").tag(day)
                    }
                }
                .pickerStyle(WheelPickerStyle()) // Display as a wheel picker
                .padding()

                // Submit button to navigate
                Button("Submit") {
                    // Use the zodiacSign formula to find the correct sign
                    zodiacSign = dataModel.zodiacSign(for: selectedMonth, day: selectedDay)
                }
                .padding()
                
                Text((zodiacSign?.name ?? "Nothing!"))
                NavigationLink(value: zodiacSign) {
                    Text("View Zodiac Details")
                        .foregroundColor(.blue)
                        .padding()
                }
                .opacity(zodiacSign != nil ? 1 : 0)
            }
            
            .navigationTitle("Pick Month & Day")
            .navigationDestination(for: AstrologyData?.self) { zodiac in
                if let zodiac = zodiac {
                    AstrologyDetailView(zodiac: zodiac)
                }
            }
        }
    }
}

struct CalculatorView_Preview: PreviewProvider {
    @State static var sampleZodiac: AstrologyData? = DataModel.data[0]
    
    static var previews: some View {
        CalculatorView()
    }
}
