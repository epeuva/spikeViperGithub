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
        interactor?.fetchFollowers()
    }

}

extension FollowersPresenter : FollowersInteractorToPresenterProtocol {
    
    func followersFetchedSuccess(followers: [Follower]) {
        // TODO
        print("followersFetchedSuccess ...")
        view?.showFollowersData(followers: followers)
    }
    
    func followersFetchFailed() {
        print("followersFetchFailed ...")
        view?.showError()
    }
    
}
