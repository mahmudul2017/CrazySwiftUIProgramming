//
//  ListViewSample.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 21/12/21.
//

import SwiftUI

struct ListViewSample: View {
    @State var isClick: Bool = false
    
    var body: some View {
        ZStack {
            Text("Click ListView Text!")
            //VStack {
            if self.isClick {
                Text("Click ListView Text!")
                SuccessToast(message: "Click ListView")
                //                    .onAppear {
                //                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                ////                            withAnimation {
                ////                                self.isShowErrorToast = false
                ////                                self.isShowErrorMessage = ""
                ////                            }
                //                        }
                //                    }
            }
            //}
            
            List {
                ForEach(0...20, id: \.self) { index in
                    HStack {
                        Text("Hello, World! \(index)")
                        
                        Spacer()
                        
                        Button(action: {
                            //self.isClick = true
                        }, label: {
                            Text("Click")
                                .padding(EdgeInsets.init(top: 4, leading: 16, bottom: 4, trailing: 16))
                                .background(Color.green)
                        })
                        .onTapGesture {
                            self.isClick = true
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ListViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ListViewSample()
    }
}
