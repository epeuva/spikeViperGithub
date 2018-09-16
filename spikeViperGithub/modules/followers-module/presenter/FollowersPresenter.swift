//
//  FollowersPresenter.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation


class FollowersPresenter : FollowersViewToPresenterProtocol
{
    
    weak var view: FollowersPresenterToViewProtocol?
    weak var interactor: FollowersPresenterToInteractorProtocol?
    weak var router: FollowersPresenterToRouterProtocol?
    
    func startUpdateView() {
        // TODO
    }

}

extension FollowersPresenter : FollowersInteractorToPresenterProtocol {
    
    func followersFetchedSuccess(followers: [Follower]) {
        // TODO
        print("followersFetchedSuccess ...")
    }
    
    func followersFetchFailed() {
        print("followersFetchFailed ...")
    }
    
}
