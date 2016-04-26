//
//  ViewController.swift
//  playersample
//
//  Created by 131e55 on 2016/04/14.
//  Copyright © 2016年 131e55. All rights reserved.
//

import UIKit
import Player

class ViewController: UIViewController {

    var player: Player!
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Embed_Player" {
            player = segue.destinationViewController as! Player
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let videoUrl = NSURL(string: "https://v.cdn.vine.co/r/videos/AA3C120C521177175800441692160_38f2cbd1ffb.1.5.13763579289575020226.mp4")!
        player.setUrl(videoUrl)
        player.playFromBeginning()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

