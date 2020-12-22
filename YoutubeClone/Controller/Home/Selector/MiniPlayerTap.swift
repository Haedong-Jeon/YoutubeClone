//
//  miniPlayerTap.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

extension HomeController {
    @objc func miniPlayerTap() {
        let videoController = VideoController()
        videoController.modalPresentationStyle = .overCurrentContext
        self.present(videoController, animated: true, completion: nil)

    }
}
