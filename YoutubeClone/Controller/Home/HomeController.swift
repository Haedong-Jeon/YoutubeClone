//
//  HomeController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/21.
//

import UIKit

class HomeController: UIViewController {
    var headerView = CommonHeaderView()
    var playerView = PlayerView()
    var playerView2 = PlayerView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(headerView)
        headerView.backgroundColor = youtubeDarkColor
        headerView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true

        view.addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        playerView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10).isActive = true
        playerView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        playerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        playerView.adMark.isHidden = true
        playerView.goMarketNowButton.isHidden = true
        
        view.addSubview(playerView2)
        playerView2.translatesAutoresizingMaskIntoConstraints = false
        playerView2.topAnchor.constraint(equalTo: playerView.bottomAnchor, constant: 10).isActive = true
        playerView2.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        playerView2.heightAnchor.constraint(equalToConstant: 300).isActive = true
        playerView2.watchCountLabel.isHidden = true
        playerView2.titleLabel.isHidden = true
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
