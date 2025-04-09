//
//  ContentView.swift
//  Layouts
//
//  Created by Laura Steiner on 4/9/25.
//

import SwiftUI

struct ContentView: View {
	@State private var messageString = ""
	
	var body: some View {
		VStack {
			
			Image(systemName: "smiley")
				.resizable()
				.scaledToFit()
				//.scaledToFill()
				.foregroundStyle(Color.yellow)
				.containerRelativeFrame(.horizontal) { size, axis in
					size * 0.5
				}
			
			
			Text(messageString)
				.font(.largeTitle)
				.fontWeight(.heavy)
				.foregroundStyle(Color.red)
				.padding()
			HStack{
				Button("Awesome"){
					messageString = "Awesome!"
				}
				
				Button("Great"){
					messageString = "Great!"
				}
			}
			.buttonStyle(.borderedProminent)
		}
		.border(Color.blue)
		.padding()
	}
}

#Preview {
	ContentView()
}
