//
//  FollowersViewController.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import UIKit

class FollowersViewController: UIViewController {
    
    // Reference to Presenter's Interface (Followers)
    var presenter:FollowersViewToPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.presenter.startUpdateView()
    }


}

extension FollowersViewController: FollowersPresenterToViewProtocol {
    
    func showFollowersData(followers: [Follower]) {
        // TODO
    }
    
    func showNoContentsScreen() {
        // TODO
    }
    
    func showError() {
        // TODO
    }
    
    
}
