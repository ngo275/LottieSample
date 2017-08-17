//
//  ViewController.swift
//  LottieSample
//
//  Created by Shuichi Nagao on 2017/08/17.
//  Copyright © 2017 Shuichi Nagao. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    lazy var loadingView: LOTAnimationView = {
        let animationView = LOTAnimationView(name: "Animation")
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        animationView.center = self.view.center
        
        animationView.loopAnimation = true
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1
        
        return animationView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func startLoading() {
        view.addSubview(loadingView)
        loadingView.play()
    }
    
    func stopLoading() {
        loadingView.removeFromSuperview()
    }
    
    func showAnimation() {
        let animationView = LOTAnimationView(name: "Animation")
        animationView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        animationView.center = self.view.center
        
        animationView.loopAnimation = false
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1
        
        view.addSubview(animationView)
        
        animationView.play{ finished in
            if finished {
                animationView.removeFromSuperview()
            }
        }
    }
    
}

