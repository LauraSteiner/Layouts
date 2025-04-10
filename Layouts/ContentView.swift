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
		GeometryReader { geometry in
			VStack {
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
					.border(.orange, width: 2)
					.cornerRadius(20)
				
				Spacer()
					.border(.blue, width: 2)
				
				//Divider()
				
				Rectangle()
					.fill(.indigo)
					.frame(width: geometry.size.width * 2/3, height: 1)
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
				.border(.purple, width: 5)
			}
			//.border(Color.blue)
			//.padding()
			//.background(Color.yellow.opacity(0.4))
		}
	}
}

#Preview {
	ContentView()
}
