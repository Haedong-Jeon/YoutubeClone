//
//  VideoController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit
import AVFoundation

protocol VideoTimeDelegate: class {
    func makeMiniPlayer(_ index: Int)
}

class VideoController: UIViewController {
    var videoIdx = 0
    var video: video?
    var delegate: VideoTimeDelegate?
    var videoPlayerView: VideoPlayerView?
    var viewTranslation = CGPoint(x: 0, y: 0)
    override func viewDidLoad() {
        if self.video == nil { return }
        videoPlayerView = VideoPlayerView(video: video!, frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
        super.viewDidLoad()
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(dragDownToDismiss)))
        view.backgroundColor = youtubeDarkColor
        drawVideoPlayer()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        videos[videoIdx].2 = getPlayedTime()!
        delegate?.makeMiniPlayer(videoIdx)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        videoPlayerView?.player?.pause()
        videoPlayerView?.player = nil
    }
}
