//
//  FollowersViewController.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import UIKit

class FollowersViewController: UITableViewController {
    
    
    @IBOutlet weak var uiTableView: UITableView!
    
    // Reference to Presenter's Interface (Followers)
    var presenter:FollowersViewToPresenterProtocol!
    
    
    var followersArray: [Follower] = Array()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.presenter.startUpdateView()
    }


}

extension FollowersViewController: FollowersPresenterToViewProtocol {
    
    func showFollowersData(followers: [Follower]) {
        // TODO
        followersArray = followers
        uiTableView.reloadData()
    }
    
    func showNoContentsScreen() {
        // TODO
    }
    
    func showError() {
        // TODO
    }
    
}

extension FollowersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followersArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowerCell", for: indexPath)
        let row = indexPath.row
        
        cell.textLabel?.text = followersArray[row].login
        
        return cell
    }
    
}
