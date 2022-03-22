//
//  PublcOfficeModel.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/22.
//

import UIKit

struct PublicOfficeModel: Codable {
    let currentCount: Int
    let data: [PublicOfficeData]
}

struct PublicOfficeData: Codable {
    let officeName: String?
    let officeTelnumber: String?
    let officeAddress: String?
}
