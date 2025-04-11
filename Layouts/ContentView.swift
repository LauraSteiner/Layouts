//
//  ContentView.swift
//  Layouts
//
//  Created by Laura Steiner on 4/9/25.
//

import SwiftUI

struct ContentView: View {
	@State private var messageString = ""
	@State private var offset = 0.0
	
	var body: some View {
		VStack {
			Text("Awesome!")
				.foregroundStyle(.white)
				.fontWeight(.black)
				.padding()
				.frame(maxWidth: .infinity)
				.background(.indigo)
			
			Spacer()
			
			Text(messageString)
				.multilineTextAlignment(.center)
				.minimumScaleFactor(0.5)
				.font(.largeTitle)
				.fontWeight(.heavy)
				.foregroundStyle(Color.red)
				.padding()
				.frame( height: 150)
				.frame( maxWidth: .infinity)
				.cornerRadius(20)
			
			Spacer()
				.border(.blue, width: 2)
			
			HStack{
				Button("Awesome"){
					messageString = "You Are Awesome!"
					offset -= 10.0
				}
				
				Spacer()
				
				Button("Great"){
					messageString = "You Are Great!"
					offset += 10.0
				}
			}
			.buttonStyle(.borderedProminent)
			.padding()
			
			Rectangle()
				.frame(height: 0)
				.background(.indigo)
		}
	}
}

#Preview {
	ContentView()
}
