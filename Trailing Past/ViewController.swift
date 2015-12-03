//
//  ViewController.swift
//  Trailing Past
//
//  Created by Adam Hernandez on 11/28/15.
//  Copyright © 2015 Adam. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet var containerView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("parade", ofType: "mp4")
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        let playerLayer = AVPlayerLayer(player: player)
        let bounds:CGRect = self.containerView.layer.bounds

        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.bounds = bounds
        playerLayer.position = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds))
        self.containerView.layer.addSublayer(playerLayer)
        
        player.seekToTime(kCMTimeZero)
        player.play()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

