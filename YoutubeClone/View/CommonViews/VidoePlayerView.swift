//
//  VidoePlayerView.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import AVFoundation
import AVKit
import UIKit

class VideoPlayerView: UIView {
    var video: video?
    var player: AVPlayer?
    let playerVC = AVPlayerViewController()

    init(video: video, frame: CGRect) {
        super.init(frame: frame)
        self.video = video
        setVideo()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setVideo() {
        guard let url = video?.url else { return }
        print("current video url is \(video!.url)")
        
        let asset = AVAsset(url: url)
        let playerItem = AVPlayerItem(asset: asset)
        guard let startTime = video?.playedTime else { return }
        player = AVPlayer(playerItem: playerItem)
        playerVC.player = player
        playerVC.player?.seek(to: startTime)
        self.addSubview(playerVC.view)
        playerVC.view.translatesAutoresizingMaskIntoConstraints = false
        playerVC.view.frame = self.bounds
    }
}
