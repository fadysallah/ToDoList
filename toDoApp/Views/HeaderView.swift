//
//  HeaderView.swift
//  toDoApp
//
//  Created by Folio on 22/05/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let title : String
    let subtitle : String
    let angel : Double
    let backgroundColor : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angel))
                
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    
            }.padding(.top,80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
        .offset( y: -200)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "title", subtitle: "subtitle", angel: 15, backgroundColor: .blue)
    }
}
