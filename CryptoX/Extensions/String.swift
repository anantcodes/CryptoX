//
//  String.swift
//  CryptoX
//
//  Created by Anant Kanchan on 20/07/21.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
