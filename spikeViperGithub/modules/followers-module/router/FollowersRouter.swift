//
//  FollowersRouter.swift
//  spikeViperGithub
//
//  Created by epeuva on 16/09/2018.
//  Copyright © 2018 epeuva. All rights reserved.
//

import Foundation
import UIKit

protocol FollowersRouterInputProtocol: class {
    static func createModule()-> FollowersViewController
}

class FollowersRouter: FollowersRouterInputProtocol {
    
    static func createModule() -> FollowersViewController {
        
        // Take care the ViewController on Presenters.storyboard has the correct controller asigned
        let view = mainstoryboard.instantiateViewController(withIdentifier: "MyFollowersViewController") as! FollowersViewController
        
        let presenter: FollowersViewOutputProtocol & FollowersInteractorOutputProtocol = FollowersPresenter()
        let interactor: FollowersInteractorInputProtocol = FollowersInteractor()
        let router: FollowersRouterInputProtocol = FollowersRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
        
    }
    
    static var mainstoryboard: UIStoryboard{
        // Take care Followers.storyboard exist
        return UIStoryboard(name:"Followers",bundle: Bundle.main)
    }
}
