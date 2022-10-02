//
//  AppVersionResponse.swift
//  
//
//  Created by serkan doksöz on 2.10.2022.
//

import Foundation
struct AppVersionResponse: Codable {
    let status: Bool?
    let message: String?
    let ios: Int?
}
