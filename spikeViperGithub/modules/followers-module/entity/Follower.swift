//
//  Follower.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation
import ObjectMapper

private let ID = "id"
private let LOGIN = "login"
private let AVATAR_URL = "avatar_url"
private let URL = "url"

//  See: https://developer.github.com/v3/users/followers/
class Follower: Mappable {
    
    internal var id: String?
    internal var login: String?
    internal var avatar_url: String?
    internal var url: String?
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        id <- map[ID]
        login <- map[LOGIN]
        avatar_url <- map[AVATAR_URL]
        url <- map[URL]
    }
}
