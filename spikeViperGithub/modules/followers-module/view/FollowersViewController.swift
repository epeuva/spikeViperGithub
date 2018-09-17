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

class FollowersViewController: UITableViewController {
    
    
    @IBOutlet weak var uiTableView: UITableView!
    
    // Reference to Presenter's Interface (Followers)
    var presenter:FollowersViewToPresenterProtocol!
    
    
    var followersArray: [Follower] = Array()

    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        // TODO: Proper visualize the followers with image and so on...
        cell.followerLabel.text = followersArray[row].login
        cell.followerLabel.sizeToFit()
        
        let imageData = try! Data(contentsOf: URL(string: followersArray[row].avatar_url!)!)
        cell.followerImage.image = UIImage(data: imageData, scale: UIScreen.main.scale)!
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}


class FollowerCell: UITableViewCell {
    @IBOutlet weak var followerImage: UIImageView!
    @IBOutlet weak var followerLabel: UILabel!
}
