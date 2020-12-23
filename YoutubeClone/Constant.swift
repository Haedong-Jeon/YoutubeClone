//
//  Constant.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit
import AVFoundation
enum VideoType {
    case normal
    case ad
}
let youtubeDarkColor = #colorLiteral(red: 0.156845212, green: 0.1568739116, blue: 0.1568388939, alpha: 1)
typealias video = (url: URL, type: VideoType)

let firstURL = URL(string:"http://mirrors.standaloneinstaller.com/video-sample/jellyfish-25-mbps-hd-hevc.mp4")!
let secondURL = URL(string:"https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!
let thirdURL = URL(string:"https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4")!
let fourthURL = URL(string:"https://youtu.be/qaJw6lqGFew")!

var videos = [(firstURL, VideoType.normal), (secondURL, VideoType.normal), (thirdURL, VideoType.ad), (fourthURL, VideoType.normal)]

var playTime: CMTime?
