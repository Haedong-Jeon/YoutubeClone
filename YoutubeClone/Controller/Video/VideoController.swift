//
//  VideoController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit
import AVFoundation

class VideoController: UIViewController {
    var video: video?
    var videoPlayerView: VideoPlayerView?
    var viewTranslation = CGPoint(x: 0, y: 0)
    override func viewDidLoad() {
        videoPlayerView = VideoPlayerView(video: video!, frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
        super.viewDidLoad()
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(dragDownToDismiss)))
        view.backgroundColor = youtubeDarkColor
        drawVideoPlayer()
    }
}
