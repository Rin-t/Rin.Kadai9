//
//  ContentView.swift
//  Kadai9
//
//  Created by Rin on 2021/09/09.
//

import SwiftUI

final class SelectedPrefecture: ObservableObject {
    @Published var selectedPrefecture = "未選択"
}

struct FirstView: View {
    @ObservedObject private var viewModel = SelectedPrefecture()
    @State private var isModalActive = false

    var body: some View {
        HStack(spacing: 30) {
            Text("都道府県")
            Text(viewModel.selectedPrefecture)
            Button(action: {
                isModalActive.toggle()
            }, label: {
                Text("入力")
            })
            .fullScreenCover(isPresented: $isModalActive, content: {
                SecondView(isModalActive: isModalActive)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
