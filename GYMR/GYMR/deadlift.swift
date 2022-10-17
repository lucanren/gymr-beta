//
//  deadlift.swift
//  GYMR
//
//  Created by David Wang on 9/17/22.
//

import UIKit
import AVKit
import AVFoundation

class deadlift: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "deadlift", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player : player)
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
        player.play()
    }
}
