//
//  Cookie.swift
//  CookieFactory_TDD
//
//  Created by Gbenga Abayomi on 29/03/2023.
//

import Foundation

import Foundation
enum cookieType {
    case gingerbread
    case shortbread
    case chocolateChip
}
class Cookie: NSObject{
    var type: cookieType
    init(_ type: cookieType) {
        self.type = type
        super.init()
    }
}
