//
//  Creature.swift
//  Gameoflife
//
//  Created by MakeSchool on 29/06/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import SpriteKit

class Creature: SKSpriteNode {
    
    /* Character side */
    var isAlive: Bool = false {
        didSet {
            /* Visibility */
            hidden = !isAlive
        }
    }
    
    /* Living neighbor counter */
    var neighborCount = 0
    
    init() {
        /* Initialize with 'bubble' asset */
        let texture = SKTexture(imageNamed: "bubble")
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        /* Set Z-Position, ensure it's on top of grid */
        zPosition = 1
        
        /* Set anchor point to bottom-left */
        anchorPoint = CGPoint(x: 0, y: 0)
    }
    
    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}