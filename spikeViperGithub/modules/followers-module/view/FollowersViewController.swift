//
//  FollowersViewController.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import UIKit

protocol FollowersViewInterface: class {
    func showFollowersData(followers: [Follower])
    func showNoContentsScreen()
}

class FollowersViewController: UIViewController {
    
    // Reference to Presenter's Interface (Followers)
    var presenter:FollowersModuleInterface!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.presenter.updateView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
