//
//  ContentView.swift
//  CrazySwiftUIProgramming
//
//  Created by Jaman on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = ""
    
    var body: some View {
        VStack {
            
        Text("TextView, EditText, ListView, RadioGroup, CheckBox, DataBase and Network Call!")
            .fontWeight(.thin)
            .foregroundColor(.color1)
            .padding(8)
            .font(.system(size: 18))
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .background(Color.black)
            .truncationMode(.middle)
            
            Form {
                Section {
                    TextField("Amount", text: $amount)
                        .padding(.leading, 20)
                        .keyboardType(.decimalPad)
                    
                    Button(action: {}) {
                        Text("Calculate")
                            .foregroundColor(.white)
                            .padding(12)
                            .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: 4)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
