//
//  MainTabs.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/21.
//

import UIKit

extension MainController {
    func setTabs() {
        self.tabBar.barTintColor = youtubeDarkColor
        self.tabBar.tintColor = .white
        self.tabBar.isTranslucent = false
        
        let homeController = HomeController(collectionViewLayout: UICollectionViewFlowLayout())
        homeController.tabBarItem.image = #imageLiteral(resourceName: "home (1)")
        homeController.tabBarItem.title = "홈"
        
        let searchController = SearchController()
        searchController.tabBarItem.image = #imageLiteral(resourceName: "compass (1)")
        searchController.tabBarItem.title = "탐색"
        
        let uploadController = UploadController()
        uploadController.tabBarItem.image = #imageLiteral(resourceName: "add")
        
        let subscribeController = SubscribeController()
        subscribeController.tabBarItem.image = #imageLiteral(resourceName: "playlist (1)")
        subscribeController.tabBarItem.title = "구독"
        
        let savedController = SavedController()
        savedController.tabBarItem.image = UIImage(systemName: "play.rectangle")
        savedController.tabBarItem.title = "보관함"
        
        viewControllers = [homeController, searchController, uploadController, subscribeController, savedController]
    }
}
