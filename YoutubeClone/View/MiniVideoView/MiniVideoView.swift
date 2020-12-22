//
//  MiniVideoView.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

class MiniVideoView: UIView {
    //MARK: - Properties
    var videoPlayerView = VideoPlayerView()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "this is dummy title"
        label.textColor = .white
        return label
    }()
    var uploaderLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 10)
        label.text = "가나다"
        return label
    }()
    var closeButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("X", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(close), for: .touchUpInside)
        return button
    }()
    //MARK: - life Cycles
    override init(frame: CGRect) {
        super.init(frame: frame)
        drawInitialUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func drawInitialUI() {
        backgroundColor = youtubeDarkColor
        
        //비디오 플레이어 등록
        videoPlayerView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(videoPlayerView)
        videoPlayerView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        videoPlayerView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        videoPlayerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //제목과 업로더를 담은 스택
        let infoStack = UIStackView(arrangedSubviews: [titleLabel, uploaderLabel])
        infoStack.axis = .vertical
        infoStack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(infoStack)
        infoStack.leftAnchor.constraint(equalTo: videoPlayerView.rightAnchor, constant: 10).isActive = true
        
        //닫기 버튼
        addSubview(closeButton)
        closeButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
    }
    @objc func close() {
        removeFromSuperview()
    }
}
