//
//  FollowersProtocol.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation

// MARK: View to ...

protocol FollowersViewToPresenterProtocol: class {
    var view: FollowersPresenterToViewProtocol? {get set}
    var interactor: FollowersPresenterToInteractorProtocol? {get set}
    var router: FollowersPresenterToRouterProtocol? {get set}
    
    func startUpdateView()
}

// MARK: Presenter to ...

protocol FollowersPresenterToViewProtocol: class {
    func showFollowersData(followers: [Follower])
    func showNoContentsScreen()
    func showError()
}

protocol FollowersPresenterToInteractorProtocol: class {
    var presenter: FollowersInteractorToPresenterProtocol? {get set}
    
    func fetchFollowers()
}

protocol FollowersPresenterToRouterProtocol: class {
    static func createModule()-> FollowersViewController
}


// MARK: Interactor to ...

protocol FollowersInteractorToPresenterProtocol: class {
    func followersFetchedSuccess(followers: [Follower])
    func followersFetchFailed()
}
