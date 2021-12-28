//
//  DatePickerDemo.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 28/12/21.
//

import SwiftUI

struct DatePickerDemo: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var date: Date
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Dismiss")
                            .foregroundColor(.white)
                    })
                    .padding()
                }
                
                Form {
                    VStack {
                        DatePicker("Select Date", selection: $date, displayedComponents: .date)
                            .datePickerStyle(WheelDatePickerStyle())
                        //DatePicker("Date", selection: $date)
                        //.datePickerStyle(WheelDatePickerStyle())
                    }
                }
            }
            
        }
    }
    
}

struct DatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerDemo(date: .constant(Date()))
    }
}
