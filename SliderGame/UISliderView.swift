//
//  UISliderView.swift
//  SliderGame
//
//  Created by Arthur Lee on 17.09.2021.
//

import SwiftUI

struct UISliderView: UIViewRepresentable {
    
    @Binding var value: Float
    
    func makeUIView(context: Context) -> UISlider {
        
        let uislider = UISlider()
        uislider.minimumValue = 0
        uislider.maximumValue = 100
        uislider.addTarget(context.coordinator, action: #selector(Coordinator.touchSlider), for: .touchUpInside)
        
        return uislider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = value
        uiView.thumbTintColor = .red
        uiView.thumbTintColor?.withAlphaComponent(CGFloat(value))
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
}

struct UISliderView_Previews: PreviewProvider {
    static var previews: some View {
        UISliderView(value: .constant(0.2))
    }
}

extension UISliderView {
    class Coordinator: NSObject {
        
        @Binding var value: Float
        
        init(value: Binding<Float>) {
            self._value = value
        }
        @objc func touchSlider(_ sender: UISlider) {
                value = sender.value
        }
    }
}
