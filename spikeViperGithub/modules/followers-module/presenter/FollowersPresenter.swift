//
//  FollowersPresenter.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation


protocol FollowersViewToPresenterProtocol: class {
    var view: FollowersPresenterToViewProtocol? {get set}
    var interactor: FollowersPresenterToInteractorProtocol? {get set}
    var router: FollowersPresenterToRouterProtocol? {get set}
    
    func startUpdateView()
}

protocol FollowersInteractorToPresenterProtocol: class {
    func followersFetchedSuccess(followers: [Follower])
    func followersFetchFailed()
}

class FollowersPresenter : FollowersViewToPresenterProtocol
{
    
    weak var view: FollowersPresenterToViewProtocol?
    
    // attention, weak could end in nil!!
    var interactor: FollowersPresenterToInteractorProtocol?
    var router: FollowersPresenterToRouterProtocol?
    
    func startUpdateView() {
        print("FollowersPresenter - startUpdateView ...")
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
