//
//  BurgerShop.swift
//  
//
//  Created by serkan doksöz on 2.10.2022.
//

import Foundation
public class BurgerShop {
    
    public func createCheeseBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.beef)
        builder.addToppings([.cheese, .lettuce, .tomatoes])
        builder.addSauces([.barbeque, .ketchup, .mayonnaise])
        return builder.build()
    }
    
    public func createVegetarianBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.tofu)
        builder.addSauces([.mayonnaise, .mustard])
        builder.addToppings([.lettuce, .tomatoes, .pickles])
        return builder.build()
    }
}
