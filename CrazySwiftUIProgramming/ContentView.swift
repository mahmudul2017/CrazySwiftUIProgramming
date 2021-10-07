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
            .foregroundColor(Color.green)
            .padding(12)
            .font(.body)
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .truncationMode(.middle)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
