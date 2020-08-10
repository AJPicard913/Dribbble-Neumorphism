//
//  DeviceList.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/10/20.
//

import SwiftUI

struct DeviceList: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "plus")
                Spacer().frame(width: 10)
                Text("iPhone Plus")
                    .bold()
            }
            .frame(width: 140, height: 44)
            .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            .cornerRadius(20)
            .foregroundColor(.white)
        }
    }
}

struct DeviceList_Previews: PreviewProvider {
    static var previews: some View {
        DeviceList()
    }
}
