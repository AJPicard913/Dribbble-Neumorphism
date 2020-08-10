//
//  AirConditioningButton.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

struct AirConditioningButton: View {

    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Air Condition")
                    .font(.system(size: 22, weight: .medium, design: .default))
                Text("Connected")
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.gray)
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            // Button
            ZStack {
                
                Circle()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color(#colorLiteral(red: 0.8626281619, green: 0.8836331964, blue: 0.9214730263, alpha: 1)))
                    
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(#colorLiteral(red: 0.9215001464, green: 0.9319422841, blue: 0.9420594573, alpha: 1)))
                    .shadow(color: Color(#colorLiteral(red: 0.8381410241, green: 0.8662455678, blue: 0.9111434817, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color(#colorLiteral(red: 0.8381410241, green: 0.8662455678, blue: 0.9111434817, alpha: 1)), radius: 5, x: 15, y: 15)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -5, y: -5)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                Circle()
                    .strokeBorder(
                        style: StrokeStyle(
                            lineWidth: 2,
                            dash: [5]
                        )
                    )
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.8170326352, green: 0.8487840295, blue: 0.8973321319, alpha: 1)))
                    
               
            }
            .frame(width: 90, height:90)
            .padding(.trailing, 20)
            .animation(.spring())

           
        }
        .frame(width: 300, height: 120)
        .background(Color(#colorLiteral(red: 0.9215001464, green: 0.9319422841, blue: 0.9420594573, alpha: 1)))
        .cornerRadius(20)
    
    }
}

struct AirConditioningButton_Previews: PreviewProvider {
    static var previews: some View {
        AirConditioningButton()
    }
}
