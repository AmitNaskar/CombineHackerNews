//
//  WKWebView+Extensions.swift
//  HackerNews
//
//  Created by Amit Naskar on 23/02/20.
//  Copyright © 2020 Amit Naskar. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {
    
    static func pageNotFoundView() -> WKWebView {
        
        let wk = WKWebView()
        wk.loadHTMLString("<html><body><h1>Page not found!</h1></body></html>", baseURL: nil)
        return wk
        
    }
    
}
