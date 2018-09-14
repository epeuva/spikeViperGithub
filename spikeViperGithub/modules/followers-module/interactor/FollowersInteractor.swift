//
//  FollowersInteractor.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation

protocol FollowersInteractorInput: class {
    func fetchFollowers()
}

class FollowersInteractor : FollowersInteractorInput
{
    weak var output: FollowersInteractorOutput!
    
    func fetchFollowers() {
        // TODO
    }
    
}
