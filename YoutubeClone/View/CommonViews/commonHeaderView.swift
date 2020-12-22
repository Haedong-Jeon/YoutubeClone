//
//  commonHeaderView.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/21.
//

import UIKit

class CommonHeaderView: UIView {
    var youtubeIcon: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.image = #imageLiteral(resourceName: "free-icon-youtube-174883")
        return imgView
    }()
    var youtubeLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.text = "YouTube"
        return label
    }()
    var bluetoothTvIcon: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.image = UIImage(systemName: "tv")
        imgView.tintColor = .white
        return imgView
    }()
    var bellIcon: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.image = UIImage(systemName: "bell")
        imgView.tintColor = .white
        return imgView
    }()
    var searchIcon: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.image = UIImage(systemName: "magnifyingglass")
        imgView.tintColor = .white
        return imgView
    }()
    var profileIcon: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgView.backgroundColor = .link
        imgView.tintColor = .white
        imgView.layer.cornerRadius = 15
        return imgView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setInitialUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setInitialUI() {
        backgroundColor = youtubeDarkColor
        //유튜브 아이콘과 라벨을 묶은 스택
        let youtubeStack = UIStackView(arrangedSubviews: [youtubeIcon, youtubeLabel])
        youtubeStack.axis = .horizontal
        youtubeStack.translatesAutoresizingMaskIntoConstraints = false
        youtubeStack.distribution = .equalSpacing
        youtubeStack.spacing = 10
        
        addSubview(youtubeStack)
        youtubeStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        youtubeStack.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        
        //블루투스 티비, 알림, 검색, 프로필 아이콘을 묶은 스택
        let buttonsStack = UIStackView(arrangedSubviews: [bluetoothTvIcon, bellIcon, searchIcon, profileIcon])
        buttonsStack.axis = .horizontal
        buttonsStack.translatesAutoresizingMaskIntoConstraints = false
        buttonsStack.distribution = .equalSpacing
        buttonsStack.spacing = 20
        
        addSubview(buttonsStack)
        buttonsStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        buttonsStack.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
    }
}
