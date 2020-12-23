//
//  ControlMiniPlayer.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/23.
//

import UIKit
import AVFoundation

extension HomeController {
    func removeMiniPlayer() {
        if miniPlayer == nil { return }
        miniPlayer?.videoPlayerView?.player?.pause()
        miniPlayer?.videoPlayerView?.player = nil
        miniPlayer?.removeFromSuperview()
        miniPlayer = nil
    }
}
