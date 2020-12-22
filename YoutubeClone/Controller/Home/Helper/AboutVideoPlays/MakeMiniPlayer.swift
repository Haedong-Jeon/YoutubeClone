//
//  MakeMiniPlayer.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

extension HomeController {
    func makeMiniPlayer() {
        let miniPlayer = MiniVideoView()
        miniPlayer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(miniPlayer)
        miniPlayer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        miniPlayer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        miniPlayer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        miniPlayer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(miniPlayerTap)))
    }
}
