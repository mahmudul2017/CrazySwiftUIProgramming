//
//  ListViewPage.swift
//  CrazySwiftUIProgramming
//
//  Created by Jaman on 7/10/21.
//

import SwiftUI

struct ListViewPage: View {
    
    var body: some View {
        VStack {
            Text("SwiftUI ListView!")
                .fontWeight(.thin)
                .foregroundColor(.color1)
                .padding(8)
                .font(.system(size: 18))
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .background(Color.blue)
                .truncationMode(.middle)
        }
    }
}
