//
//  PULLUP.swift
//  GYMR
//
//  Created by David Wang on 9/17/22.
//

import UIKit
import AVKit
import AVFoundation

class PULLUP: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "pullup", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player : player)
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
        player.play()
    }
}
