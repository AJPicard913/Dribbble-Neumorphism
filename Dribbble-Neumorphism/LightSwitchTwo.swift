//
//  LightSwitch.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

struct LightSwitchTwo: View {
    @State var SwitchTwo = false
    @State var viewStateTwo = CGSize.zero
    @State var isDraggingTwo = false
    

    var body: some View {
        ZStack {
            HStack {
                LightButtonTwo(isDraggingTwo: $isDraggingTwo, viewStateTwo: $viewStateTwo, SwitchTwo: $SwitchTwo)
                
                Spacer()
                    .frame(width: isDraggingTwo ? 0 : 10)
                PlusButtonTwo(isDraggingTwo: $isDraggingTwo)
            }
            .padding(.horizontal, 15)
        }
    }
}

struct LightSwitchTwo_Previews: PreviewProvider {
    static var previews: some View {
        LightSwitchTwo()
    }
}


//MARK: LightButton
struct LightButtonTwo: View {
    
    @Binding var isDraggingTwo: Bool
    @Binding var viewStateTwo: CGSize
    @Binding var SwitchTwo: Bool
    
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
                // Button
                VStack {
                    RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .frame(width: 60, height: 38)
                        .foregroundColor(SwitchTwo ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(SwitchTwo ? 0 : 0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(SwitchTwo ? 0 : 1), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(SwitchTwo ? Color(#colorLiteral(red: 0.01256715879, green: 0.2007504106, blue: 0.7993343472, alpha: 1)) : Color(#colorLiteral(red: 0.9214991927, green: 0.9353724122, blue: 0.9454812407, alpha: 1)))
                .cornerRadius(18)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                .offset(y: SwitchTwo ? 50 : 0)
                
                .onTapGesture {
                    withAnimation(.spring()) {
                        SwitchTwo.toggle()
                    }
                }
            
                
                Spacer()
                Text(SwitchTwo ? "Off" : "On")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.8977038388, green: 0.8977038388, blue: 0.8977038388, alpha: 1)))
                    .padding(.bottom, 20)
                    .offset(y: SwitchTwo ? -50 : 0)
            }
            .frame(height: 120)
            .background(Color(#colorLiteral(red: 0.01256715879, green: 0.2007504106, blue: 0.7993343472, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
//
            
//

        }
        .frame(width: isDraggingTwo ? 250 : 230, height: 135)
        .background(Color(#colorLiteral(red: 0.1433499455, green: 0.345838666, blue: 0.9998763204, alpha: 1)))
        .cornerRadius(30)
        .animation(.spring())
        .offset(x: viewStateTwo.width, y: viewStateTwo.height)
        
        .gesture(
            DragGesture().onChanged { value in
                self.viewStateTwo = value.translation
                if self.viewStateTwo.width > 10 {
                    self.isDraggingTwo = true
                }
            }
            .onEnded { value in
                if self.viewStateTwo.width < 10 {
                    self.isDraggingTwo = false
                }
                
                self.viewStateTwo = .zero
            }
        )
        
//        .gesture(drag)

    }
}

//MARK: PlusButton
struct PlusButtonTwo: View {
    
    @Binding var isDraggingTwo: Bool
    
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
        .offset(x: isDraggingTwo ? 200 : 0)
        .animation(.spring())
    }
}
