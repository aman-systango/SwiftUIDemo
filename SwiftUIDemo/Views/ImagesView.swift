//
//  ImagesView.swift
//  SwiftUIDemo
//
//  Created by MacMini03 on 15/02/23.
//

import SwiftUI

struct ImagesView: View {
    
    var name: String
    @State var images = Images.init(total: 0, total_pages: 0, results: [])
//    let results = images?.results ?? []
    var body: some View {
        VStack {
            if let results = images.results {
                List(results, id: \.id) { result in
                    AsyncImage(url: URL(string: result.urls?.full ?? "")!,
                           placeholder: { Text("Loading ...") },
                           image: { Image(uiImage: $0).resizable() })
                    .scaledToFit()
                    .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            } else {
                List {
                    Text("No Data Yet!!")
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            }
        }.onAppear {
            ApiCall().loadData(name: name) { data in
                images = data
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView(name: "")
    }
}
