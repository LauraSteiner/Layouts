//
//  Count.swift
//  Layouts
//
//  Created by Laura Steiner on 4/10/25.
//

import SwiftUI

struct Count: View {
	@State private var pressCount = 0
	@State private var saying = ""
	@State private var selectedDate = Date()
	@State private var sliderValue = 50.0
	
    var body: some View {
		VStack() {
			Spacer()
			
			Text("Press count: \(pressCount)")
			
			Button("Press me") {
				pressCount += 1
				
			}
			.tint(.indigo)
			.buttonStyle(.borderedProminent)
			
			Spacer()
			
			Slider(value: $sliderValue, in: 0...100) {
				//Accessibility label
		
			} minimumValueLabel: {
				Image(systemName: "speaker.minus")
				
			} maximumValueLabel: {
				Image(systemName: "speaker.plus")
			}
			
			Text("Slider value: \(sliderValue.formatted(.number.precision(.fractionLength(1))))%")
			
			Text("Slider value: \(String(format: "%.2f", arguments: [sliderValue]))%")
			
			Spacer()
			
			Text(saying)
				.foregroundStyle(.white)
				.containerRelativeFrame(.horizontal) { size, axis in
					size * 0.8
				}
				.padding()
				.background(.indigo)
			TextField("Saying:", text: $saying)
				.containerRelativeFrame(.horizontal) { size, axis in
					size * 0.8
				}
			
			Spacer()
			
			VStack(alignment: .leading){
				DatePicker("Selected date", selection: $selectedDate)
				
				Text("Selected Date: \(selectedDate, style: .date)")
				
//				Text("Selected Date (formatted): \(selectedDate.formatted())")
//				
//				Text("Selected Date (formatted, specified): \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
			}
			
			
		}
		.font(.title2)
		.padding()
    }
}

#Preview {
    Count()
}
