//
//  ContentView.swift
//  SwiftApp
//
//  Created by SYED TAHA ALI on 18/02/2023.
///Users/syedtahaali/Desktop/App/SwiftApp/SwiftApp/ContentView.swift

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
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
                    Text("Login").font(.largeTitle).bold().padding().foregroundColor(.green.opacity(0.9))
                    TextField("Username", text:$username) .padding().frame(width:300,height:50).background(Color.black.opacity(0.05))
                    SecureField("Password",text: $password).padding().frame(width:300,height:50).background(Color.black.opacity(0.05))
                    
                    
                    Button("Login")
                    {
                        
                    }
                    .font(.title3.bold())
                    .foregroundColor(.white).frame(width:300,height:45).background(Color.green.opacity(0.8))
                    
                    Spacer().frame(height: 10)
                    NavigationLink(destination: Text("you are login @\(username)"), isActive: $ShowingloginScreen)
                    {
                        EmptyView()
                    }
                    
                    Button("Create New Account")
                    {
                        
                    }
                    .font(.title2.bold())
                    .foregroundColor(.white).frame(width:300,height:50).background(Color.green.opacity(0.8))
                    
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
    func authenditate(username: String,password:String)
    {
        if(username.lowercased()=="admin")
        {
            wrongusername = 0
            if(password.lowercased()=="admin")
            {
                wrongusername = 0
                ShowingloginScreen = true
            }
            else
            {
                wrongpassword=2
            }
        }
        
        else
        {
            wrongusername=2
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }}
