//
//  SecondView.swift
//  Kadai9
//
//  Created by Rin on 2021/09/09.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var
        presentation
    @Binding var isModalActive: Bool
    
    init(isModalActive: Binding<Bool>) {
        UINavigationBar.appearance().barTintColor = .systemGray6
        self._isModalActive = isModalActive
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                ButtonView(isModalActive: $isModalActive, buttonTitle: "東京都")
                ButtonView(isModalActive: $isModalActive, buttonTitle: "神奈川県")
                ButtonView(isModalActive: $isModalActive, buttonTitle: "埼玉県")
                ButtonView(isModalActive: $isModalActive, buttonTitle: "千葉県")
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: Button("Cancel", action: {
                self.presentation.wrappedValue.dismiss()
            }))
        }
    }
}

struct ButtonView: View {
    @Binding var isModalActive: Bool
    var buttonTitle: String
    
    @ObservedObject private var viewModel = SelectedPrefecture()
    @Environment(\.presentationMode) var
        presentation

    var body: some View {
        Button(action: {
            viewModel.selectedPrefecture = buttonTitle
            isModalActive.toggle()
        }, label: {
            Text(buttonTitle)
        })
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(isModalActive: .constant(true))
    }
}
