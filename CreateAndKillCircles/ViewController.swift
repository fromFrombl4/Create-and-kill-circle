//
//  ViewController.swift
//  FollowMyFinger
//
//  Created by Roman Dod on 7/21/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let widthHeight: CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(createView(_:)))
        view.addGestureRecognizer(tap)
        
        
    }
    
    

    
    @objc func createView(_ touches: UITouch) -> UIView {
        
        
        let circleView = UIView()
        
//        let maxX: CGFloat = view.bounds.width - widthHeight
//        let maxY: CGFloat = view.bounds.height - widthHeight
        
        circleView.frame = CGRect(x: touches.location(in: view).x, y: touches.location(in: view).y, width: widthHeight, height: widthHeight)
        circleView.backgroundColor = randomColor()
        circleView.layer.cornerRadius = widthHeight / 2
        view.addSubview(circleView)
        
        return circleView
    }
    
    func randomColor() -> UIColor{
       return UIColor.init(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
    }
    
    
    
    
}

