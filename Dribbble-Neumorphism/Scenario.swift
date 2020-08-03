//
//  Scenario.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

struct Scenario: View {
    var body: some View {
        HStack {
            Text("Turn on the scenario of presence")
                .font(.system(size: 19, weight: .bold, design: .default))
                .padding(.leading, 20)
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 100, height: 90)
                    .foregroundColor(Color(#colorLiteral(red: 0.9326858883, green: 0.4807289137, blue: 0.2762908262, alpha: 1)))
                    .shadow(color: Color(#colorLiteral(red: 0.9326858883, green: 0.4807289137, blue: 0.2762908262, alpha: 1)).opacity(0.25), radius: 10, x: 0, y: 10)
                Image(systemName: "arrow.right")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
            .padding(.trailing, 20)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
        .background(Color(#colorLiteral(red: 0.9215001464, green: 0.9319422841, blue: 0.9420594573, alpha: 1)))
        .cornerRadius(30)
        .padding(.horizontal, 20)
    }
}

struct Scenario_Previews: PreviewProvider {
    static var previews: some View {
        Scenario()
    }
}
