//
//  FollowersPresenter.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation

protocol FollowersModuleInterface: class {
    func updateView()
}

protocol FollowersInteractorOutput: class {
    func FollowersFetched(followers: [Follower])
}

class FollowersPresenter : FollowersViewToPresenterProtocol
{
    weak var view: FollowersPresenterToViewProtocol?
    
    func startUpdateView() {
        // TODO
    }

}
