//
//  HomeController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/21.
//

import UIKit

class HomeController: UIViewController {
    var headerView = CommonHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(headerView)
        headerView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
