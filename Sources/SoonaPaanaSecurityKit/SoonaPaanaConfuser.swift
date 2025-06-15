//
//  SoonaPaanaConfuser.swift
//  SoonaPaanaSecurityKit
//
//  Created by G2-216 on 15/06/25.
//

import Foundation

public struct SoonaPaanaConfuser {
    private static let map = Array("!@#$%^&*()-_=+{}[]|:;<>,.?/~`1234567890")

    public static func confuse(_ input: String) -> String {
        return String(input.map { _ in map.randomElement()! })
    }
}
