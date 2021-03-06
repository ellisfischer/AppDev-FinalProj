//
//  GameViewController.swift
//  PaperToss
//
//  Created by Michael Fischer on 11/26/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
 
class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                scene.size = self.view.bounds.size
                
                // Present the scene
                view.presentScene(scene)
            }
            
           
            
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        } else {
            return .portrait
        }
    }

    

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
