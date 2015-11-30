//
//  ViewController.swift
//  Trailing Past
//
//  Created by David Hernandez on 11/28/15.
//  Copyright © 2015 Adam. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("parade", ofType: "mp4")
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        let playerLayer = AVPlayerLayer(player: player)
        let bounds:CGRect = self.view.layer.bounds
        let title = UILabel()

        
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.bounds = bounds
        playerLayer.position = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds))
        self.view.layer.addSublayer(playerLayer)
        
        player.seekToTime(kCMTimeZero)
        player.play()
        
        //This doesn't need to be done progromatically. Change it!
        title.text = "Trailing Past"
        title.font = UIFont(name: "STHeitiTC-Light", size: 35)
        title.textColor = UIColor.whiteColor()
        title.textAlignment = .Center
        title.numberOfLines = 2
        title.frame = CGRectMake(0, 100, 300, 500)
        title.center = self.view.center
        
        self.view.addSubview(title)
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

