//
//  squat.swift
//  GYMR
//
//  Created by David Wang on 9/17/22.
//

import UIKit
import AVKit
import AVFoundation

class squat: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "squat", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player : player)
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
        player.play()
    }
}
