//
//  CollectionViewDelegates.swift
//  YoutubeClone
//
//  Created by 전해동 on 2020/12/22.
//

import UIKit
import AVFoundation

extension HomeController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCellReuseIdentifier, for: indexPath) as? HomeCell else {
            return UICollectionViewCell()
        }
        if videos[indexPath.row].1 == .ad {
            //광고
            cell.playerView.redrawWithAd()
        } else {
            //일반 영상
            cell.playerView.redrawWithoutAd()
        }
        setThumbnailImg(to: cell.playerView.player, indexPath.row)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: homeHeaderIdentifier, for: indexPath) as? HomeHeader else {
            return UICollectionReusableView()
        }
        return header
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        removeMiniPlayer()
        nowVideo = videos[indexPath.row]
        goToVideoController(videos[indexPath.row], indexPath)
    }
}
extension HomeController: VideoTimeDelegate {
    func makeMiniPlayer(_ index: Int) {
        makeMiniPlayer(videos[index])
    }
}
