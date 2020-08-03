//
//  MoreDevices.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

struct MoreDevices: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(#colorLiteral(red: 0.9054766815, green: 0.9054766815, blue: 0.9054766815, alpha: 1)), lineWidth: 1)
                .frame(width: 325, height: 110)
            VStack {
                Text("Add more devices to enhance your experience")
                    .font(.system(size: 19, weight: .bold, design: .default))
            }
            .frame(width: 260)
            .padding(.trailing, 50)
        }
    }
}

struct MoreDevices_Previews: PreviewProvider {
    static var previews: some View {
        MoreDevices()
    }
}
