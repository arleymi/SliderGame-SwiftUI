//
//  Button.swift
//  SliderGame
//
//  Created by Arthur Lee on 17.09.2021.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Action", action: {})
    }
}
