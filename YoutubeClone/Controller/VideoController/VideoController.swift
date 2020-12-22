//
//  VideoController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit
import AVFoundation

class VideoController: UIViewController {
    var videoPlayerView = VideoPlayerView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = youtubeDarkColor
        
        videoPlayerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(videoPlayerView)
        
        videoPlayerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        videoPlayerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        videoPlayerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        videoPlayerView.videoPlay()
    }
}
