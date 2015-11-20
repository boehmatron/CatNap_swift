//: Playground - noun: a place where people can play

import UIKit
import SpriteKit
import XCPlayground

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 480, height:
    320))
let scene = SKScene(size: CGSize(width: 480, height: 320))
sceneView.showsFPS = true
sceneView.showsPhysics = true
scene.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
scene.physicsBody = SKPhysicsBody(edgeLoopFromRect: scene.frame)
sceneView.presentScene(scene)
XCPShowView("My Scene", view: sceneView)

let square = SKSpriteNode(imageNamed: "square")
square.name = "shape"
square.position = CGPoint(x: scene.size.width * 0.25, y:
    scene.size.height *
    0.50)
square.physicsBody = SKPhysicsBody(rectangleOfSize: square.frame.size)

let circle = SKSpriteNode(imageNamed: "circle")
circle.name = "shape"
circle.position = CGPoint(x: scene.size.width * 0.50, y:
    scene.size.height *
    0.50)
circle.physicsBody = SKPhysicsBody(circleOfRadius: circle.size.width/2)

let triangle = SKSpriteNode(imageNamed: "triangle")
triangle.name = "shape"
triangle.position = CGPoint(x: scene.size.width * 0.75, y:
    scene.size.height *
    0.50)
var trianglePath = CGPathCreateMutable()
CGPathMoveToPoint(trianglePath, nil, -triangle.size.width/2,
    -triangle.size.height/2)
CGPathAddLineToPoint(trianglePath, nil, triangle.size.width/2,
    -triangle.size.height/2)
CGPathAddLineToPoint(trianglePath, nil, 0, triangle.size.height/2)
CGPathAddLineToPoint(trianglePath, nil, -triangle.size.width/2,
    -triangle.size.height/2)
triangle.physicsBody = SKPhysicsBody(polygonFromPath: trianglePath)

let l = SKSpriteNode(imageNamed:"L")
l.name = "shape"
l.position = CGPoint(x: scene.size.width * 0.5, y: scene.size.height *
    0.75)
l.physicsBody = SKPhysicsBody(texture: l.texture!, size: l.size)

scene.addChild(l)
scene.addChild(square)
scene.addChild(circle)
scene.addChild(triangle)


func spawnSand() {
    let sand = SKSpriteNode(imageNamed: "sand")
    sand.position = CGPoint(
        x: random(min: 0.0, max: scene.size.width),
        y: scene.size.height - sand.size.height)
    sand.physicsBody = SKPhysicsBody(circleOfRadius: sand.size.width/2)
    sand.name = "sand"
    sand.physicsBody!.restitution = 1.0
    sand.physicsBody!.density = 20.0
    scene.addChild(sand)
}


delay(seconds: 2.0) {
    scene.physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
    scene.runAction(
        SKAction.repeatAction(
            SKAction.sequence([
                SKAction.runBlock(spawnSand),
                SKAction.waitForDuration(0.1)
                ]),
            count: 100) )
}
