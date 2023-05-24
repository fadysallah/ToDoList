//
//  RegisterView.swift
//  toDoApp
//
//  Created by Folio on 21/05/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    
    var body: some View {
        VStack {
           // Header
           HeaderView(title: "Register",
                      subtitle: "Start organizing to does",
                      angel: -15,
                      backgroundColor: .green)
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    
                
                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TlButton(
                    tittle: "Create Account",
                    background: .green
                ){
                    viewModel.register()
                }
                
            }
            .offset(y: -50)
            Spacer()
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
