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
        videoController.video = nowVideo
        videoController.modalPresentationStyle = .overCurrentContext
        
        //큰 화면으로 넘어간다면 미니 플레이어의 재생은 정지돼야 한다.
        removeMiniPlayer()
        self.present(videoController, animated: true, completion: nil)
    }
}
