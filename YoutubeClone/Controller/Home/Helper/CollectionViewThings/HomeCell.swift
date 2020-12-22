//
//  HomeCell.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

class HomeCell: UICollectionViewCell {
    var playerView = thumbnailView()
    var isAd = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setInitialUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setInitialUI() {
        backgroundColor = youtubeDarkColor
        addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        playerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        playerView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
}
