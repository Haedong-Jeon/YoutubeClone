//
//  HomeHeader.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

class HomeHeader: UICollectionReusableView {
    var headerView = CommonHeaderView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = youtubeDarkColor
        addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
}
