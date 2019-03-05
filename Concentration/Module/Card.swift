//
//  Card.swift
//  Concentration
//
//  Created by Mohamed Abdallah on 3/5/19.
//  Copyright © 2019 Mohamed Abdallah. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    var hashValue: Int { return identifier}
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUP = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
