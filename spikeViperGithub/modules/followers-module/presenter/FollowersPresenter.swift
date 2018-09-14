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

class FollowersPresenter : FollowersModuleInterface
{
    weak var view: FollowersViewInterface!
    
    func updateView() {
        // TODO
    }

}
