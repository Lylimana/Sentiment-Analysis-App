//
//  Signup.swift
//  SwiftApp
//
//  Created by SYED TAHA ALI on 19/02/2023.
//

import Foundation

import SwiftUI

struct con: View {
    @State private var Firstname = ""
    @State private var Lastname = ""
    @State private var Email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var wrongusername = 0
    @State private var wrongpassword = 0
    @State private var ShowingloginScreen = false
    
    
    
    var body: some View {
        NavigationView
        {
            ZStack
            {
                Color.white.ignoresSafeArea()
                VStack
                {
                    Text("Signup").font(.largeTitle).bold().padding().foregroundColor(.green.opacity(0.9))
                    TextField("First Name", text:$Firstname)
                        .padding().frame(width:300,height:50).background(Color.black.opacity(0.05))
                    TextField("Last Name", text:$Lastname)
                        .padding().frame(width:300,height:50).background(Color.black.opacity(0.05))
                    TextField("Email", text:$Email)
                        .padding().frame(width:300,height:50).background(Color.black.opacity(0.05))
                    SecureField("Password",text: $password).padding().frame(width:300,height:50).background(Color.black.opacity(0.05))
                    
                    
                    Button("SignUp")
                    {
                        
                    }
                    .font(.title3.bold())
                    .foregroundColor(.white).frame(width:300,height:45).background(Color.green.opacity(0.8))
                    
                 
             
                    
                   
                    
                }
            }
        }
        
        //        VStack {
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundColor(.accentColor)
        //            Text("Hello, world!")
        //        }
        //        .padding()
        //    }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }}
