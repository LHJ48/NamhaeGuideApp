//
//  PublcOfficeModel.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/22.
//
// requestURL : https://api.odcloud.kr/api/15013793/v1/uddi:0a04c5a1-d479-413b-801f-e83d962857fe_201906241753?page=1&perPage=10&serviceKey=oQC35%2BVwb95RROlWy%2Fx%2FWPoixr6I6dAkvLsr4IWwRWrYf2tM5MulRDsir8N8aJJ3DJOMgA4aSIeTYsajqkCAPA%3D%3D

import UIKit

struct PublicOfficeModel: Decodable {
    let data: [OfficeData]
}

struct OfficeData: Decodable{
    let officeModelName: String
    let officeModelTel: String
    let officeModelAddress: String
    
    enum CodingKeys: String, CodingKey {
        case officeModelName = "기관명"
        case officeModelTel = "연락처"
        case officeModelAddress = "주소"
    }
}
