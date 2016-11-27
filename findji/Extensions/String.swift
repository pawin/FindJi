//
//  String.swift
//  findji
//
//  Created by win on 11/27/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import Foundation

extension String {
    var numberEmoji: String {
        var string = "\(self)"
        string = string.replacingOccurrences(of: "0", with: "0️⃣")
        string = string.replacingOccurrences(of: "1", with: "1️⃣")
        string = string.replacingOccurrences(of: "2", with: "2️⃣")
        string = string.replacingOccurrences(of: "3", with: "3️⃣")
        string = string.replacingOccurrences(of: "4", with: "4️⃣")
        string = string.replacingOccurrences(of: "5", with: "5️⃣")
        string = string.replacingOccurrences(of: "6", with: "6️⃣")
        string = string.replacingOccurrences(of: "7", with: "7️⃣")
        string = string.replacingOccurrences(of: "8", with: "8️⃣")
        string = string.replacingOccurrences(of: "9", with: "9️⃣")
        return string
    }
}
