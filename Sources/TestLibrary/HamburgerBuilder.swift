//
//  HamburgerBuilder.swift
//  
//
//  Created by serkan doksöz on 2.10.2022.
//

import Foundation
public class HamburgerBuilder {
    
    public private(set) var meat: Meat = .beef
    public private(set) var sauces: Sauces = []
    public private(set) var toppings: Toppings = []
    
    public func addSauces(_ sauce: Sauces) {
        sauces.insert(sauce)
    }
    public func removeSauces(_ sauce: Sauces) {
        sauces.remove(sauce)
    }
    public func addToppings(_ topping: Toppings) {
        toppings.insert(topping)
    }
    public func removeToppings(_ topping: Toppings) {
        toppings.remove(topping)
    }
    public func setMeat(_ meat: Meat) {
        self.meat = meat
    }
    
    public func build() -> Hamburger {
        return Hamburger(meat: meat,
                         sauce: sauces,
                         toppings: toppings)
    }
}
