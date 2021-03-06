//
//  LightSwitch.swift
//  Dribbble-Neumorphism
//
//  Created by AJ Picard on 8/3/20.
//

import SwiftUI

struct LightSwitch: View {

    @State var Switch = false
    @State var viewState = CGSize.zero
    @State var isDragging = false
    
    var body: some View {
        VStack {
            HStack {
                
                LightButton(Switch: $Switch, viewState: $viewState, isDragging: $isDragging)
                
                Spacer()
                    .frame(width: isDragging ? 0 : 10)
                PlusButton(isDragging: $isDragging)
            }
            .padding(.horizontal, 15)
        }
    }
}

struct LightSwitch_Previews: PreviewProvider {
    static var previews: some View {
        LightSwitch()
    }
}


//MARK: LightButton
struct LightButton: View {
    
    @Binding var Switch: Bool
    @Binding var viewState: CGSize
    @Binding var isDragging: Bool
    
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
                        .foregroundColor(Switch ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(Switch ? 0 : 0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(Switch ? 0 : 1), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(Switch ? Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0) : Color(#colorLiteral(red: 0.9214991927, green: 0.9353724122, blue: 0.9454812407, alpha: 1)))
                .cornerRadius(18)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                .offset(y: Switch ? 50 : 0)
                .onTapGesture {
                    withAnimation(.spring()){
                        Switch.toggle()
                    }
                }
                
                Spacer()
                Text(Switch ? "Off" : "On")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.8977038388, green: 0.8977038388, blue: 0.8977038388, alpha: 1)))
                    .padding(.bottom, 20)
                    .offset(y: Switch ? -50 : 0)
                    .animation(.spring())
                    
            }
            .frame(height: 120)
            .background(Switch ? Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)).opacity(0.7) : Color(#colorLiteral(red: 0.01256715879, green: 0.2007504106, blue: 0.7993343472, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
//
            
//

        }
        .frame(width: isDragging ? 250 : 230, height: 135)
        .background(Color(#colorLiteral(red: 0.1433499455, green: 0.345838666, blue: 0.9998763204, alpha: 1)))
        .cornerRadius(30)
        .animation(.spring())
        .offset(x: viewState.width, y: viewState.height)
        
        .gesture(
            DragGesture()
                .onChanged { value in
                self.viewState = value.translation
                if self.viewState.width > 10 {
                    self.isDragging = true
                }
            }
            .onEnded { value in
                if self.viewState.width < 10 {
                    self.isDragging = false
                }
                
                self.viewState = .zero
            }
        )
    }
}

//MARK: PlusButton
struct PlusButton: View {
    
    @Binding var isDragging: Bool
    
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
        .offset(x: isDragging ? 200 : 0)
        .animation(.spring())
    }
}
