//
//  FollowersInteractor.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class FollowersInteractor : FollowersPresenterToInteractorProtocol
{
    var presenter: FollowersInteractorToPresenterProtocol?
    
    // List of followers of Linus Torvalds GitHub repo
    // Todo: Move base url to constants
    let URL = "https://api.github.com/users/torvalds/followers"
    
    func fetchFollowers() {
        Alamofire.request(URL).responseJSON { response in
            if (response.response?.statusCode == 200) {
                if let arrayResponse = response.result.value as! NSArray? {
                    let followersArray = Mapper<Follower>().mapArray(JSONArray: arrayResponse as! [[String : Any]])
                    self.presenter?.followersFetchedSuccess(followers: followersArray)
                }
            } else {
                self.presenter?.followersFetchFailed()
            }
        }
    }
}
