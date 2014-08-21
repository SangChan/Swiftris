//
//  GameScene.swift
//  Swiftris
//
//  Created by SangChan on 2014. 8. 21..
//  Copyright (c) 2014년 Spring. All rights reserved.
//

import SpriteKit

let TickLengthLevelOne = NSTimeInterval(600)

class GameScene : SKScene {
    
    var tick:(() -> ())?
    var tickLengthMillis = TickLengthLevelOne
    var lastTick:NSDate?
    
    override func update(currentTime: NSTimeInterval) {
        if lastTick == nil {
            return
        }
        var timePassed = lastTick!.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis {
            lastTick = NSDate.date()
            tick?()
        }
    }
    
    func startTickung() {
        lastTick = NSDate.date()
    }
    func stopTickling() {
        lastTick = nil
    }
    
    required init(coder aDecoder: (NSCoder!)) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        anchorPoint = CGPoint(x: 0, y: 1.0)
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        addChild(background)
    }
}
