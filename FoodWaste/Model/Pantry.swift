//
//  Pantry.swift
//  FoodWaste
//
//  Created by David Krystall on 11/17/20.
//

import Foundation

protocol ExpirableItem {
    var name: String { get }
    var expirationDate: Date { get set }
    var openedDate: Date? { get }
    mutating func newExpirationDate(date: Date)
}

protocol Liquid: ExpirableItem { }

struct PerishableItem : ExpirableItem {
    var openedDate: Date?
    let name: String
    var expirationDate: Date
    init(name:String) {
        self.name = name
        self.expirationDate = Date()
    }
    mutating func newExpirationDate(date: Date) {
        if var opened = openedDate {
            opened = opened.addingTimeInterval(TimeInterval(3600*7))
            if opened < expirationDate{
                expirationDate = Date().addingTimeInterval(TimeInterval(3600*7))
            }
        }
    }
}

struct DryGood : ExpirableItem {
    var openedDate: Date?
    let name: String
    var expirationDate: Date
    let amount: Int16
    init(name:String, amount:Int16) {
        self.name = name
        self.expirationDate = Date()
        self.amount = amount
    }
    mutating func newExpirationDate(date: Date) {
        if var opened = openedDate {
            opened = opened.addingTimeInterval(TimeInterval(3600*7))
            if opened < expirationDate{
                expirationDate = Date().addingTimeInterval(TimeInterval(3600*7))
            }
        }
    }
}

struct Beverage: Liquid {
    var name: String
    var expirationDate: Date
    var openedDate: Date?
    
    mutating func newExpirationDate(date: Date) {
        if var opened = openedDate {
            opened = opened.addingTimeInterval(TimeInterval(3600*7))
            if opened < expirationDate{
                expirationDate = Date().addingTimeInterval(TimeInterval(3600*7))
            }
        }
    }
}

struct PreservedSauce : Liquid {
    var name: String
    var expirationDate: Date
    var openedDate: Date?
    
    mutating func newExpirationDate(date: Date) {
        if var opened = openedDate {
            opened = opened.addingTimeInterval(TimeInterval(3600*60))
            if opened < expirationDate{
                expirationDate = Date().addingTimeInterval(TimeInterval(3600*60))
            }
        }
    }
}
