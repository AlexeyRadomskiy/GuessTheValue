//
//  GameView.swift
//  GuessTheValue
//
//  Created by Alexey on 04.04.2022.
//

import SwiftUI

struct GameView: View {
    
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                CustomSlider(value: $currentValue, alpha: alpha, color: color)
                Text("100")
            }
            .padding()
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(currentValue: .constant(50), targetValue: 50, color: .red, alpha: 100)
    }
}
