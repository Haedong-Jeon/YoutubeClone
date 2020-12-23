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
                dismiss(animated: true, completion: nil)
            }
        default:
            break
        }
    }
}
