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
        let myFirstLabel = UILabel()

        
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.bounds = bounds
        playerLayer.position = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds))
        self.view.layer.addSublayer(playerLayer)
        
        player.seekToTime(kCMTimeZero)
        player.play()
        
        //This doesn't need to be done progromatically. Change it!
        myFirstLabel.text = "Trailing Past"
        myFirstLabel.font = UIFont(name: "STHeitiTC-Light", size: 35)
        myFirstLabel.textColor = UIColor.whiteColor()
        myFirstLabel.textAlignment = .Center
        myFirstLabel.numberOfLines = 2
        myFirstLabel.frame = CGRectMake(15, -100, 300, 500)
        
        self.view.addSubview(myFirstLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

