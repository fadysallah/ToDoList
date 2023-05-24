//
//  TlButton.swift
//  toDoApp
//
//  Created by Folio on 22/05/2023.
//

import SwiftUI

struct TlButton: View {
    let tittle : String
    let background : Color
    let action : () -> Void
    
    var body: some View {
        Button{
         action()
                
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(tittle)
                    .foregroundColor(Color.white)
                    .bold()
            }
            
        }
    }
}

struct TlButton_Previews: PreviewProvider {
    static var previews: some View {
        TlButton(tittle: "tittle", background: .blue){
            // Action
        }
        
    }
}
