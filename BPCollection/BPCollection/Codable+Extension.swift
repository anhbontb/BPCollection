//
//  Codable+Extension.swift
//  BPCollection
//
//  Created by Bon Bon on 2/24/18.
//  Copyright © 2018 Bon Bon. All rights reserved.
//

import Foundation

public protocol CodableExtensionProtocol {}

extension CodableExtensionProtocol where Self: Codable  {
    
    public func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
    
    public static func fromData(_ data: Data) -> Self? {
        return try? JSONDecoder().decode(Self.self, from: data)
    }
}
