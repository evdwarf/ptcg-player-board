//
//  PTCGDiscardPile.swift
//  PTCGPlayerBoard
//
//  Created by Eimer on 2021/04/20.
//

import Foundation

public struct PTCGDiscardPileZone {
    
    var cards: Array<PTCGDeckCard> = []
    
    public init() {}
}

extension PTCGDiscardPileZone: PTCGZoneConvertible {
    
    public var switcher: PTCGZoneSwither {
        .discardPile(self)
    }
    
    public var all: Array<PTCGZoneUnitConvertible> {
        []
    }
    
    public typealias ReadRequest = Void
    public func read(_ request: Void) -> Array<PTCGZoneUnitConvertible> {
        []
    }
    
    public typealias InputRequest = Void
    public mutating func input(_ request: Void, of unitSet: Array<PTCGZoneUnitConvertible>) throws {
        
    }
    
    public typealias OutputRequest = Void
    public mutating func output(_ request: Void) throws -> Array<PTCGZoneUnitConvertible> {
        []
    }
}
