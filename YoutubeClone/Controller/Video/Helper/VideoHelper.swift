//
//  VideoHelper.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit
import AVFoundation

extension VideoController {
    func drawVideoPlayer() {
        videoPlayerView!.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(videoPlayerView!)
        videoPlayerView!.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        videoPlayerView!.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        videoPlayerView!.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    func videoPlay() {
        videoPlayerView?.player?.play()
    }
    func getPlayedTime() -> CMTime? {
        return videoPlayerView?.player?.currentItem?.currentTime()
    }
    func getTotalTime() -> CMTime? {
        return videoPlayerView?.player?.currentItem?.duration
    }
    func setStartTime(to time: CMTime) {
        videoPlayerView?.player?.currentItem?.seek(to: time, completionHandler: nil)
    }
}
