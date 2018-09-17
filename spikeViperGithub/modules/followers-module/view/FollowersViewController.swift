//
//  FollowersViewController.swift
//  spikeViperGithub
//
//  Created by epeuva on 14/09/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import UIKit
import MBProgressHUD
import Alamofire
import AlamofireImage

class FollowersViewController: UITableViewController {
    
    @IBOutlet weak var uiTableView: UITableView!
    
    // Reference to Presenter's Interface (Followers)
    var presenter: FollowersViewToPresenterProtocol!
    
    
    var followersArray: [Follower] = Array()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Default
        uiTableView.rowHeight = UITableView.automaticDimension

        // Do any additional setup after loading the view.
        print("FollowersViewController - viewDidLoad ...")
        presenter.startUpdateView()
        
        // loading
        showLoadingHUD()
    }
    
    private func showLoadingHUD() {
        let progressHUD = MBProgressHUD.showAdded(to: self.view, animated: true)
        progressHUD.label.text = "Loading..."
    }
    
    private func hideLoadingHUD() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }


}

extension FollowersViewController: FollowersPresenterToViewProtocol {
    
    func showFollowersData(followers: [Follower]) {
        // TODO
        followersArray = followers
        uiTableView.reloadData()
        hideLoadingHUD()
    }
    
    func showNoContentsScreen() {
        // TODO
    }
    
    func showError() {
        // TODO
    }
    
}

// TableView methods
extension FollowersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followersArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowerCell", for: indexPath) as! FollowerCell
        let row = indexPath.row
        
        // Follower username
        cell.followerLabel.text = followersArray[row].login
        cell.followerLabel.sizeToFit()
        
        // Follower URL
        cell.followerURL.text = followersArray[row].url
        cell.followerURL.sizeToFit()
    
        // Follower image (with AlamoFire)
        // TODO: Use default image
        if let imageURL = URL(string: followersArray[row].avatar_url ?? "") {
            cell.followerImage.af_setImage(withURL: imageURL)
        }
        
        return cell
    }
    
    
}


class FollowerCell: UITableViewCell {
    @IBOutlet weak var followerImage: UIImageView!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var followerURL: UILabel!
}
