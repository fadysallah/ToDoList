//
//  LoginView.swift
//  toDoApp
//
//  Created by Folio on 21/05/2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView {
         VStack {
            // Header
             HeaderView(title: "To Do List", subtitle: "Get things done", angel: 15, backgroundColor: .pink)
            
            // Login Form
                Form{
                 //Error Message
                if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password",text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TlButton(
                        tittle: "Log In",
                        background: .blue
                    ){
                        viewModel.login()
                    }
                }
                .offset(y: -80)
            
            
            // Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom,50)
                
                 Spacer()
        }
    }
  }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            
    }
}
