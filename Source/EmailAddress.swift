//
//  EmailAddress.swift
//  SwiftEmail
//
//  Created by Yaroslav Pasternak on 25/09/2018.
//  Copyright © 2018 Thorax. All rights reserved.
//

import Foundation

public struct EmailAddress {
    public let string: String
    public var name: String { return string.components(separatedBy: "@").first ?? "" }
    public var domain: String { return string.components(separatedBy: "@").last ?? "" }
    public var components: [String] { return name.components(separatedBy: ".") + domain.components(separatedBy: ".") }
    
    public init?(string: String) {
        guard string.isValidEmail else { return nil }
        
        self.string = string
    }
    
}
