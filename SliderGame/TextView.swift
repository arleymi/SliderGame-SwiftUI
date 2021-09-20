//
//  TextView.swift
//  SliderGame
//
//  Created by Arthur Lee on 17.09.2021.
//

import SwiftUI

struct TextView: View {
    
    var textValue: String
    
    var body: some View {
        Text(textValue)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(textValue: "0")
    }
}
