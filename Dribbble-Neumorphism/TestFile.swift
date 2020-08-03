//
//  TestFile.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

//
//  ContentView.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 7/31/20.
//

import SwiftUI

struct TestFile: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Light")
                        .font(.system(size: 17, weight: .medium, design: .default))
                    Text("Connnected")
                }
                VStack {
                    VStack {
                        RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                            .frame(width: 60, height: 38)
                            .foregroundColor(Color(#colorLiteral(red: 0.9215001464, green: 0.9319422841, blue: 0.9420594573, alpha: 1)))
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
                        .padding(.bottom, 20)
                }
                .frame(height: 120)
                .background(Color(#colorLiteral(red: 0.01256715879, green: 0.2007504106, blue: 0.7993343472, alpha: 1)))
                .cornerRadius(20)
            }
            .frame(width: 240, height: 135)
            .background(Color(#colorLiteral(red: 0.1433499455, green: 0.345838666, blue: 0.9998763204, alpha: 1)))
            .cornerRadius(30)
            
            HStack {
                VStack(alignment: .leading){
                    Text("Air Conditioning")
                    Text("Connected")
                }
                
                ZStack {
                    
                   
                    Circle()
                        .frame(width: 90, height: 90)
                        .foregroundColor(Color(#colorLiteral(red: 0.8626281619, green: 0.8836331964, blue: 0.9214730263, alpha: 1)))
                        
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color(#colorLiteral(red: 0.9215001464, green: 0.9319422841, blue: 0.9420594573, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0.8381410241, green: 0.8662455678, blue: 0.9111434817, alpha: 1)), radius: 10, x: 15, y: 15).shadow(color: Color(#colorLiteral(red: 0.8381410241, green: 0.8662455678, blue: 0.9111434817, alpha: 1)), radius: 5, x: 15, y: 15)
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
                .frame(width: 90, height: 90)
            }
            .frame(width: 300, height: 160)
            .background(Color(#colorLiteral(red: 0.9215001464, green: 0.9319422841, blue: 0.9420594573, alpha: 1)))
            
            
            .padding(.top, 100)
            
        }
    }
}

struct TestFile_Previews: PreviewProvider {
    static var previews: some View {
        TestFile()
    }
}

