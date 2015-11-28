//
//  LoginController.swift
//  Trailing Past
//
//  Created by David Hernandez on 11/28/15.
//  Copyright © 2015 Adam. All rights reserved.
//

import AVFoundation
import UIKit

class LoginController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("LoginScreen") as UIViewController!
        self.presentViewController(vc, animated: true, completion: nil)
        let path = NSBundle.mainBundle().pathForResource("parade", ofType: "mp4")
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        self.view.layer.addSublayer(playerLayer)
        
        player.seekToTime(kCMTimeZero)
        player.play()
    }
    
}
