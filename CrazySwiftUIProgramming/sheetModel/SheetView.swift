//
//  SheetView.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 28/12/21.
//

import SwiftUI

struct SheetView: View {
    @State var date: Date = Date()
    @State private var sheetMode: SheetMode = .none
    @State private var sheetStatus: Bool = false
    
    var body: some View {
        ZStack {
            SheetModelDemo(sheetMode: $sheetMode) {
                DatePickerDemo(date: $date)
            }
            .frame(maxHeight: UIScreen.main.bounds.size.height / 2)
            
            VStack(alignment: .center, spacing: 16) {
                Button(action: {
                    sheetStatus = true
                    sheetMode = .full
                }, label: {
                    Text("Sheet Clicked!")
                        .foregroundColor(.blue)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                })
                
                Spacer()
                
                Button(action: {
                    sheetStatus = true
                    sheetMode = .full
                }, label: {
                    Text("Sheet Clicked!")
                        .foregroundColor(.blue)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                })
            }
            
//            .sheet(isPresented: $sheetStatus) {
//                SheetModelDemo(sheetMode: $sheetMode) {
//                    VStack(alignment: .trailing, spacing: nil) {
//                        DatePickerDemo(date: $date)
//                    }
//                }
//            }
//            .frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
