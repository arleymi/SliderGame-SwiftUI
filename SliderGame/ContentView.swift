//
//  ContentView.swift
//  SliderGame
//
//  Created by Arthur Lee on 17.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Float.random(in: 0...100)
    @State private var showAlert = false
    @State var targetValue = Int.random(in: 0...100)
    @State var changableValue = Int()
    
    
    
    var body: some View {
        VStack {
            Text("Put the slider to \(targetValue)")
                .padding()
            HStack {
                TextView(textValue: "0")
                UISliderView(value: $sliderValue)
                    .padding()
                    .accentColor(.black)
                TextView(textValue: "100")
            }
            .padding()
            ButtonView(title: "Check result") {
                self.showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Your score is"), message: Text("\(computeScore())%"))
            })
            .padding()
            ButtonView(title: "Start again") {
                changableValue = Int.random(in: 0...100)
                targetValue = changableValue
            }
                
        }
        
    }
    
// func reset slider value when showalert = true
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(Int(sliderValue))))
        let result = 100 - difference
        return result
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
