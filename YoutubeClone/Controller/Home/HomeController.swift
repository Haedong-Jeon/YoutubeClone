//
//  HomeController.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/21.
//

import UIKit
let homeCellReuseIdentifier = "reuse identifier for home tab cell"
let homeHeaderIdentifier = "reuse identifier for home tab header"
class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    //MARK: - Properties
    var headerView = CommonHeaderView()
    var playerView = PlayerView()
    var playerView2 = PlayerView()
    //MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = youtubeDarkColor
        //콜렉션 뷰 기본 설정
        collectionView.delegate = self
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: homeCellReuseIdentifier)
        collectionView.register(HomeHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: homeHeaderIdentifier);
        collectionView.backgroundColor = youtubeDarkColor
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
