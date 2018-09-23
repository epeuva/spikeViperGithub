//
//  FollowersPresenter.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation


protocol FollowersViewOutputProtocol: class {
    var view: FollowersViewInputProtocol? {get set}
    var interactor: FollowersInteractorInputProtocol? {get set}
    var router: FollowersRouterInputProtocol? {get set}
    
    func startUpdateView()
}

protocol FollowersInteractorOutputProtocol: class {
    func followersFetchedSuccess(followers: [Follower])
    func followersFetchFailed()
}

class FollowersPresenter : FollowersViewOutputProtocol
{
    
    weak var view: FollowersViewInputProtocol?
    
    // attention, weak could end in nil!!
    var interactor: FollowersInteractorInputProtocol?
    var router: FollowersRouterInputProtocol?
    
    func startUpdateView() {
        print("FollowersPresenter - startUpdateView ...")
        interactor?.fetchFollowers()
    }

}

extension FollowersPresenter : FollowersInteractorOutputProtocol {
    
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
