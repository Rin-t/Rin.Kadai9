//
//  ContentView.swift
//  Kadai9
//
//  Created by Rin on 2021/09/09.
//

import SwiftUI

struct FirstView: View {
    @State var selectedPrefecture = "未選択"
    @State private var isModalActive = false
    var body: some View {
        HStack(spacing: 30) {
            Text("都道府県")
            Text(selectedPrefecture)
            Button(action: {
                isModalActive.toggle()
            }, label: {
                Text("入力")
            })
            .fullScreenCover(isPresented: $isModalActive, content: {
                SecondView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
