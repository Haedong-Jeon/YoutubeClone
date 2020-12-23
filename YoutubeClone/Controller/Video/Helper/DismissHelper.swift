//
//  DismissHelper.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit

extension VideoController {
    @objc func dragDownToDismiss(_ sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .changed:
            viewTranslation = sender.translation(in: view)
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut) {
                self.view.transform = CGAffineTransform(translationX: 0, y: self.viewTranslation.y)
            }
        case .ended:
            if viewTranslation.y < 200 {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut) {
                    self.view.transform = .identity
                }
            } else {
                playTime = videoPlayerView?.getPlayedTime()// 미니 플레이어가 됐을 때 영상을 이어서 보도록.
                print("current play time is \(playTime!)")
                dismiss(animated: true, completion: nil)
            }
        default:
            break
        }
    }
}
