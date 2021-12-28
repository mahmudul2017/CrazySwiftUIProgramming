//
//  SwiftUIWebView.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 28/12/21.
//

import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let myUrl = url else {
            return
        }
        
        let request = URLRequest(url: myUrl)
        uiView.load(request)
    }
}
