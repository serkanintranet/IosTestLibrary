//
//  BurgerShop.swift
//  
//
//  Created by serkan doksöz on 2.10.2022.
//

import Foundation
public class AttributedStringBuilder {
    typealias Attributes = [NSAttributedString.Key : Any]

    private let string = NSMutableAttributedString(string: "")

    // We follow the convention of returning the builder object
    // itself from any configuration methods, and by adding the
    // @discardableResult attribute we won't get warnings if we
    // don't end up doing any chaining.
    @discardableResult
    func append(_ character: Character,
                attributes: Attributes) -> AttributedStringBuilder {
        let addedString = NSAttributedString(
            string: String(character),
            attributes: attributes
        )

        string.append(addedString)

        return self
    }

    func build() -> NSAttributedString {
        return NSAttributedString(attributedString: string)
    }
}
