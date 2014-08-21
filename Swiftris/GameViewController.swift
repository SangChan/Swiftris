//
//  GameViewController.swift
//  Swiftris
//
//  Created by SangChan on 2014. 8. 21..
//  Copyright (c) 2014년 Spring. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController : UIViewController {
    var scene:GameScene!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        var scene:GameScene!
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}