//
//  ListViewPage.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 7/10/21.
//

import SwiftUI

struct ListViewPage: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var showText = ""
    
    private var addValues: Int {
        (Int(number1) ?? 0) + (Int(number2) ?? 0) }
    
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: CustomProtocol()) {
                    Text("Go To Protocol")
                        .padding(.leading, 48)
                        .padding(.top, 8)
                        .padding(.trailing, 48)
                        .padding(.bottom, 8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        
                }
                    
                    Text("SwiftUI ListView!")
                        .fontWeight(.thin)
                        .foregroundColor(.color1)
                        .padding(8)
                        .font(.system(size: 18))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .background(Color.blue)
                        .truncationMode(.middle)
                    
                    TextField("Enter number 1 here", text: $number1)
                        .keyboardType(.numberPad)
                        .padding(EdgeInsets.init(top: 16, leading: 24, bottom: 0, trailing: 16))
                    
                    TextField("Enter number 2 here", text: $number2)
                        .keyboardType(.namePhonePad)
                        .padding(EdgeInsets.init(top: 8, leading: 24, bottom: 16, trailing: 16))
                    
                    Button(action: {self.showText = String(addValues)}) {
                        Text("Calculate")
                            .padding(EdgeInsets.init(top: 8, leading: 24, bottom: 8, trailing: 24))
                            .foregroundColor(.white)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    Text("Result : \(addValues)")
                    Text("Button Click : \(showText)")
                }
        }
    }
}

struct ListViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ListViewPage()
    }
}
