//
//  ContentView.swift
//  DogYearsCalculator
//
//  Created by Jonathan Edwin on 20/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var age = 0.0
    
    func calculateDogYears(double conversionFactor: Double) -> Double {
        return age * conversionFactor
    }
    
    var body: some View {
        VStack {
            
            
            switch Int(calculateDogYears(double: 7)) {
                case 0...7:
                    Text("🐶")
                        .font(.system(size: 70))
                case 8...15:
                    Text("🐕")
                        .font(.system(size: 70))
                default:
                    Text("😇")
                        .font(.system(size: 70))
            }
            
            Text("Dog Years Calculator")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.black)
            
            Slider(value: $age, in: 0...100)
            Text("My age: \(Int(age))")
            Text("Dog's age: \(Int(calculateDogYears(double: 7)))")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
