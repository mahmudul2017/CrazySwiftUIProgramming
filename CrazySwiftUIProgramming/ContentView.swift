//
//  ContentView.swift
//  CrazySwiftUIProgramming
//
//  Created by Jaman on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("TextView, EditText, ListView, RadioGroup, CheckBox, DataBase and Network Call!")
            .fontWeight(.thin)
            .foregroundColor(.color1)
            .padding(12)
            .font(.system(size: 18))
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .background(Color.black)
            .truncationMode(.middle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
