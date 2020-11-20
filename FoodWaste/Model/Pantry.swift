//
//  Pantry.swift
//  FoodWaste
//
//  Created by David Krystall on 11/17/20.
//

import Foundation


protocol PantryItem {
    var name: String { get }
    var expirationDate: Date { get set }
}

protocol Liquid: PantryItem {
    var openedDate: Date { get }
}

struct PerishableItem : PantryItem {
    let name: String
    var expirationDate: Date
    init(name:String) {
        self.name = name
        self.expirationDate = Date()
    }
}

struct DryGood : PantryItem {
    let name: String
    var expirationDate: Date
    let amount: Int16
    init(name:String, amount:Int16) {
        self.name = name
        self.expirationDate = Date()
        self.amount = amount
    }
}

struct Beverage: Liquid {
    var name: String
    var expirationDate: Date {
        set {
            self.expirationDate = openedDate.addingTimeInterval(TimeInterval.init().advanced(by: 100))
        }
        get {
            return self.expirationDate
        }
    }
    var openedDate: Date
    
}


