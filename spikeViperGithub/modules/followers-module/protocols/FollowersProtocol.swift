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
    // var interactor
    // var router
    
    func startUpdateView()
}

// MARK: Presenter to ...

protocol FollowersPresenterToViewProtocol: class {
    func showFollowersData(followers: [Follower])
    func showNoContentsScreen()
    func showError()
}
