//
//  LightSwitch.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

struct LightSwitch: View {
    var body: some View {
        HStack {
            LightButton()
                
            Spacer()
            PlusButton()
        }
        .padding(.horizontal, 15)
    }
}

struct LightSwitch_Previews: PreviewProvider {
    static var previews: some View {
        LightSwitch()
    }
}


//MARK: LightButton
struct LightButton: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Light")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Text("Connnected")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.8977038388, green: 0.8977038388, blue: 0.8977038388, alpha: 1)))
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            VStack {
                VStack {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .frame(width: 60, height: 38)
                        .foregroundColor(Color(#colorLiteral(red: 0.9440257181, green: 0.9507567497, blue: 0.9709498444, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(Color(#colorLiteral(red: 0.9214991927, green: 0.9353724122, blue: 0.9454812407, alpha: 1)))
                .cornerRadius(18)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                Spacer()
                Text("On")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.8977038388, green: 0.8977038388, blue: 0.8977038388, alpha: 1)))
                    .padding(.bottom, 20)
            }
            .frame(height: 120)
            .background(Color(#colorLiteral(red: 0.01256715879, green: 0.2007504106, blue: 0.7993343472, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
        }
        .frame(width: 230, height: 135)
        .background(Color(#colorLiteral(red: 0.1433499455, green: 0.345838666, blue: 0.9998763204, alpha: 1)))
        .cornerRadius(30)
    }
}

//MARK: PlusButton
struct PlusButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(
                    style: StrokeStyle(
                        lineWidth: 2,
                        dash: [8]
                    )
                )
                .frame(width: 135, height: 135)
                .foregroundColor(Color(#colorLiteral(red: 0.8779544733, green: 0.8779544733, blue: 0.8779544733, alpha: 1)))
            
            Image(systemName: "plus")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.8779544733, green: 0.8779544733, blue: 0.8779544733, alpha: 1)))
        }
    }
}
