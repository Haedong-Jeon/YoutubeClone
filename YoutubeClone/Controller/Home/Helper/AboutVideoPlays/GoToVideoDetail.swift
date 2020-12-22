//
//  GoToVideoDetail.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import Foundation

extension HomeController {
    func goToVideoController() {
        let videoController = VideoController()
        videoController.modalPresentationStyle = .overCurrentContext
        self.present(videoController, animated: true, completion: nil)
    }
}
