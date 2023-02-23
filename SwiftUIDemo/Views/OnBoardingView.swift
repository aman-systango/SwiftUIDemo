//
//  OnBoardingView.swift
//  SwiftUIDemo
//
//  Created by MacMini03 on 08/02/23.
//

import SwiftUI

struct OnBoardingView: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
    var body: some View {
        ZStack {
            //            Color(hex: "#edeaf0")
            //                .ignoresSafeArea()
            VStack {
                TabView {
                    Image("onBoarding1")
                        .resizable()
//                            .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    Image("onBoarding1")
                        .resizable()
//                            .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    Image("onBoarding1")
                        .resizable()
//                            .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea()
                }
                .ignoresSafeArea()
                .tabViewStyle(.page(indexDisplayMode: .always))
                .background(.red)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
//                    Image("onBoarding1")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
                Text("Discover your")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .padding(.top, 30)
                    .foregroundColor(Color(hex: "#353146"))
                Text("Dream job Here")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(Color(hex: "#353146"))
                Text("Explore all the most exiting jobs roles based on your interest And study major")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 18, weight: .regular, design: .default))
                    .foregroundColor(Color(hex: "#7e7c8d"))
                    .padding(.top, 5)
                HStack {
                    NavigationLink {
//                            ContentView()
                    } label: {
                        Text("Register")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .foregroundColor(.black)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                    }
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Sign In")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .foregroundColor(.black)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                    }
                }
                .padding(.top, 50)
                .padding(.bottom, 20)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnBoardingView()
        }
    }
}
