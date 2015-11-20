//
//  BedNode.swift
//  catnap
//
//  Created by Böhm Johannes, SME-OXD-MOI on 13.11.15.
//  Copyright © 2015 Johannes Boehm. All rights reserved.
//

import Foundation
import SpriteKit
class BedNode: SKSpriteNode, CustomNodeEvents{
    func didMoveToScene() {
    print("bed added to scene")
	
	let bedBodySize = CGSize(width: 40.0, height: 30.0)
	physicsBody = SKPhysicsBody(rectangleOfSize: bedBodySize)
	physicsBody!.dynamic = false
    
    }
    }
