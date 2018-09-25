//
//  EmailAddress.swift
//  SwiftEmail
//
//  Created by Yaroslav Pasternak on 25/09/2018.
//  Copyright © 2018 Thorax. All rights reserved.
//

import Foundation

import Foundation

struct EmailAddress {
    let string: String
    var name: String { return string.components(separatedBy: "@").first ?? "" }
    var domain: String { return string.components(separatedBy: "@").last ?? "" }
    var components: [String] { return name.components(separatedBy: ".") + domain.components(separatedBy: ".") }
    
    init?(string: String) {
        guard string.isValidEmail else { return nil }
        
        self.string = string
    }
    
}
