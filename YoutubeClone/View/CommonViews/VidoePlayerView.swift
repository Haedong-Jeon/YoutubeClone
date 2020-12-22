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
    var player: AVPlayer?
    let avPVC = AVPlayerViewController()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setVideo()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setVideo() {
        guard let url = URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4") else {
            print("url is not available")
            return
        }

        let asset = AVAsset(url: url)
        let playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
//        let playerLayer = AVPlayerLayer(player: player)
//
//        playerLayer.frame = self.bounds
//        playerLayer.videoGravity = .resizeAspect
        
//        self.layer.addSublayer(playerLayer)
        avPVC.player = player
        self.addSubview(avPVC.view)
        avPVC.view.translatesAutoresizingMaskIntoConstraints = false
        avPVC.view.frame = self.bounds
        
        
    }
    func videoPlay() {
        player?.play()
    }
}
