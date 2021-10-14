//
//  ContentView.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = ""
    @State private var showText = "Show Value"
    
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: ListViewPage()) {
                    Text("Go To ListView")
                        .padding(.leading, 48)
                        .padding(.top, 8)
                        .padding(.trailing, 48)
                        .padding(.bottom, 8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        
                }.navigationBarTitle("SwiftUI ListView")
                
                Image("royalgreenlogo")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
                    .clipped()
                
                Text("Check Page Change")
                
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
                            
                            Button(action: {self.showText = amount}) {
                                Text("Calculate")
                                    .foregroundColor(.white)
                                    .padding(12)
                                    .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: 4)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                            
                            Text(showText)
                                .padding(8)
                                .foregroundColor(.blue)
                                .font(.system(size: 18))
                        }
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
