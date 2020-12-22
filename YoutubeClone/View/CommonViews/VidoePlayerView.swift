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
    let playerVC = AVPlayerViewController()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setVideo()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setVideo() {
        let bigSizeUrl = "http://mirrors.standaloneinstaller.com/video-sample/jellyfish-25-mbps-hd-hevc.mp4"
        let smallSizeUrl = "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
        let threeMBSizeUrl = "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4"
        let youtubeURl = "https://youtu.be/qaJw6lqGFew"
        guard let url = URL(string: smallSizeUrl) else {
            print("url is not available")
            return
        }

        let asset = AVAsset(url: url)
        let playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
        playerVC.player = player
        self.addSubview(playerVC.view)
        playerVC.view.translatesAutoresizingMaskIntoConstraints = false
        playerVC.view.frame = self.bounds
    }
    func videoPlay() {
        player?.play()
    }
}
