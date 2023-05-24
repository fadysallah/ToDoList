//
//  toDoAppApp.swift
//  toDoApp
//
//  Created by Folio on 19/05/2023.
//
import FirebaseCore
import SwiftUI

@main
struct toDoAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
