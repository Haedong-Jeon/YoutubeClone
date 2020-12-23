//
//  MakeThumbnails.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/23.
//

import UIKit
import AVFoundation

extension HomeController {
    func setThumbnailImg(to imgView: UIImageView, _ index: Int) {
        let imgGenerator = AVAssetImageGenerator(asset: AVAsset.init(url: videos[index].0))
        let time = CMTimeMake(value: 1, timescale: 1)
        guard let imgRef = try? imgGenerator.copyCGImage(at: time, actualTime: nil) else { return }
        imgView.image = UIImage.init(cgImage: imgRef)
    }
}
