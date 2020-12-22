//
//  GoToVideoDetail.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import Foundation

extension HomeController {
    func goToVideoController(_ video: video) {
        let videoController = VideoController()
        videoController.video = video
        videoController.modalPresentationStyle = .overCurrentContext
        self.present(videoController, animated: true, completion: nil)
    }
}
