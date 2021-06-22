//
//  UIApplication.swift
//  CryptoX
//
//  Created by Anant Kanchan on 22/06/21.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
