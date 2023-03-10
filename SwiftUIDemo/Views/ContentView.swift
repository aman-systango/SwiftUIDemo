//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by MacMini03 on 03/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var username = ""
    @State var password = ""
    @State var isValid = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "#edeaf0")
                    .ignoresSafeArea()
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .ignoresSafeArea()
                VStack {
                    Group {
                        Text("Hello Again!")
                            .foregroundColor(Color(hex: "#353146"))
                            .frame(maxWidth: .infinity, maxHeight: 45)
                            .font(.system(size: 40, weight: .semibold, design: .default))
                            .padding(.bottom, 5)
//                            .background(.purple)
                        Text("Wellcome back you've been missed!")
                            .font(.system(size: 30, weight: .regular, design: .default))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(hex: "#353146"))
                            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 70)
                        Spacer()
                        TextField("Enter username", text: $username)
                            .frame(height: 55)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 10)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white))
                            .background(.white)
                            .padding(.top, 20)
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                            .frame(height: 55)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 10)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white))
                            .background(.white)
                            .padding(.top, 10)
                        HStack {
                            Spacer()
                            Button("Recovery Password") {
                            }
                            .padding(.trailing, 10
                            )
                            .foregroundColor(.gray)
                        }
                        .padding(.top, 5)
                        //                Spacer(minLength: 20)
                       
                        Button(action: {
                            isValid = username == "testing@xyz.com" && password == "123456"
                        }, label: {
                            Text("Sign in")
                                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 55)
                                .foregroundColor(.white)
                                .background(Color(hex: "#f96a68"))
                                .cornerRadius(5)
                                .padding(.top, 20)
                                .font(.system(size: 18, weight: .bold, design: .default))
                        })
                        
                        NavigationLink(isActive: $isValid) {
                            HomeView()
                        } label: {
                            EmptyView()
                        }

//                        NavigationLink {
//                            if username == "amraghuvanshi@systango.com" && password == "123456" {
//                                HomeView()
//                            } else {
//                                Text("Testing")
//                            }
//                        } label: {
//                            Text("Sign in")
//                                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 55)
//                                .foregroundColor(.white)
//                                .background(Color(hex: "#f96a68"))
//                                .cornerRadius(5)
//                                .padding(.top, 20)
//                                .font(.system(size: 18, weight: .bold, design: .default))
//                        }
                    }
                    ZStack {
                        Color(.gray)
                            .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 1, idealHeight: 1, maxHeight: 1, alignment: .center)
                        Text("Or continue with")
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .padding()
                            .background(Color(hex: "#edeaf0"))
                            .foregroundColor(Color(hex: "#353146"))
                    }
                    .padding()
                    HStack {
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 80, idealHeight: 80, maxHeight: 80, alignment: .center)
                    HStack {
                        Text("Not a member?")
                            .foregroundColor(Color(hex: "#353146"))
                        Button("Register now") {
                        }
                    }
                    .padding(.top, 30)
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
