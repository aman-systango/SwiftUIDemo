//
//  HomeView.swift
//  SwiftUIDemo
//
//  Created by MacMini03 on 15/02/23.
//

import SwiftUI

var dataTypeList = [
    Data(name: "Avengers", pic: "avengers"),
    Data(name: "Black Panther", pic: "blackPanther"),
    Data(name: "Thor", pic: "thor"),
    Data(name: "Iron Man", pic: "ironMan"),
]

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Wallpaper")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: 45, alignment: .leading)
                .padding(.horizontal, 20)
//                    .background(.blue)
            List {
                ForEach(dataTypeList, id:\.id) { data in
                    NavigationLink {
                        ImagesView(name: data.name)
                    } label: {
                        getSomeCell(data: data)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
        .navigationBarHidden(true)
    }
}

func getNormalCell(data: Data) -> some View {
    return HStack {
        Text(data.name)
            .font(.system(size: 30))
            .fontWeight(.bold)
    }
}

func getSomeCell(data: Data) -> some View {
    return ZStack {
        Image(data.pic)
            .resizable()
            .scaledToFill()
        Text(data.name)
            .font(.system(size: 25))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
    }
    .frame(width: .infinity, height: 100, alignment: .center)
    .cornerRadius(10)
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
