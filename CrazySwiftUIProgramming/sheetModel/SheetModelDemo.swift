//
//  SheetModelDemo.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 28/12/21.
//

import SwiftUI

enum SheetMode {
    case none
    case quarter
    case half
    case full
}

struct SheetModelDemo<Content: View>: View {
    @Environment(\.presentationMode) var presentationMode
    let content: () -> Content
    var sheetMode: Binding<SheetMode>
    
    init(sheetMode: Binding<SheetMode>, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.sheetMode = sheetMode
    }
    
    private func CalculateOffSet() -> CGFloat {
        switch sheetMode.wrappedValue {
        case .none:
            return UIScreen.main.bounds.height
        case .quarter:
            return UIScreen.main.bounds.height - 200
        case .half:
            return UIScreen.main.bounds.height / 2
        case .full:
            return 0
        }
    }
    
    var body: some View {
        content()
            .offset(y: CalculateOffSet())
            .animation(.spring())
            .edgesIgnoringSafeArea(.all)
        
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("Check!")
                .foregroundColor(.black)
        })
        .padding()

//        ZStack(alignment: .bottom) {
//            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
//                Button("Dismiss Sheet") {
//                    //presentationMode.wrappedValue.dismiss()
//                }
//            }
//            .frame(height: 400)
//            .frame(maxWidth: .infinity)
//            .transition(.move(edge: .bottom))
//        }
//        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
//        .ignoresSafeArea()
    }
    
}

struct SheetModelDemo_Previews: PreviewProvider {
    static var previews: some View {
        SheetModelDemo(sheetMode: .constant(.none)) {
            VStack {
                Text("Hello World")
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        }
    }
}

