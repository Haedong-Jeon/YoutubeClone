//
//  ViewController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/21.
//

import UIKit

class MainController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        setTabs()
    }
}
