//
//  PlayerView.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

class PlayerView: UIView {
    var player: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.backgroundColor = .lightGray
        return imgView
    }()
    var profile: UIImageView = {
        var imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imgView.layer.cornerRadius = 25
        imgView.backgroundColor = .blue
        imgView.clipsToBounds = true
        return imgView
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = true
        label.text = "this is dummy title"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    var subLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = true
        label.text = "this is dummy sub label"
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textColor = .lightGray
        return label
    }()
    var adMark: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 45).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.backgroundColor = .yellow
        label.textAlignment = .center
        label.textColor = .black
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.text = "광고"
        return label
    }()
    var uploaderNameLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "가나다 ・"
        label.textColor = .lightGray
        label.sizeToFit()
        return label
    }()
    var watchCountLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " 조회수 3.9만회 ・"
        label.textColor = .lightGray
        return label
    }()
    var uploadTimeLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " 4개월 전"
        label.textColor = .lightGray
        return label
    }()
    var goMarketNowButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("지금 보기", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.contentHorizontalAlignment = .left
        return button
    }()
    var verticalDotButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 10).isActive = true
        button.heightAnchor.constraint(equalToConstant: 10).isActive = true
        button.setImage(#imageLiteral(resourceName: "vertical-dots").withTintColor(.white).withRenderingMode(.alwaysOriginal), for: .normal)
        return button
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
        //영상 플레이어
        addSubview(player)
        player.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        player.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
        player.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //업로더 프로필 이미지
        addSubview(profile)
        profile.topAnchor.constraint(equalTo: player.bottomAnchor,constant: 10).isActive = true
        profile.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        
        //점 세개 버튼
        addSubview(verticalDotButton)
        verticalDotButton.topAnchor.constraint(equalTo: profile.topAnchor).isActive = true
        verticalDotButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -10).isActive = true
        
        //광고 마크, 업로더 이름, 조회수, 시간을 묶은 스택
        let uploaderInfoStack = UIStackView(arrangedSubviews: [adMark, uploaderNameLabel, watchCountLabel, uploadTimeLabel])
        uploaderInfoStack.translatesAutoresizingMaskIntoConstraints = false
        uploaderInfoStack.axis = .horizontal
        uploaderInfoStack.spacing = 10
        
        //업로드 이름, 영상 설명등을 묶은 스택
        let movieInfoStack = UIStackView(arrangedSubviews: [titleLabel, subLabel, uploaderInfoStack, goMarketNowButton])
        movieInfoStack.translatesAutoresizingMaskIntoConstraints = false
        movieInfoStack.axis = .vertical
        
        addSubview(movieInfoStack)
        movieInfoStack.topAnchor.constraint(equalTo: profile.topAnchor).isActive = true
        movieInfoStack.leftAnchor.constraint(equalTo: profile.rightAnchor, constant: 10).isActive = true
        movieInfoStack.rightAnchor.constraint(equalTo: verticalDotButton.leftAnchor, constant: -10).isActive = true
    }
    func redrawWithoutAd() {
        adMark.isHidden = true
        goMarketNowButton.isHidden = true
    }
    func redrawWithAd() {
        uploadTimeLabel.isHidden = true
        watchCountLabel.isHidden = true
    }
}
