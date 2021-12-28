//
//  WebView.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 28/12/21.
//

import SwiftUI

struct WebView: View {
    var body: some View {
        //NavigationView {
            SwiftUIWebView(url: URL(string: "https://www.google.com/"))
                .navigationTitle("SwiftUI WebView")
        //}
        .ignoresSafeArea()
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
