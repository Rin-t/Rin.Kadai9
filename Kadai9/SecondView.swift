//
//  SecondView.swift
//  Kadai9
//
//  Created by Rin on 2021/09/09.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle(Text("ss"), displayMode: .inline)
            .navigationBarItems(leading: Text("左"))
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
