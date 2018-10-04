//
//  ViewController.swift
//  G2
//
//  Created by minal borole on 03/10/18.
//  Copyright © 2018 minal borole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleLeftSwipe(sender:)))
        leftSwipe.direction=UISwipeGestureRecognizerDirection.left
        view.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleRightSwipe(sender:)))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        view.addGestureRecognizer(rightSwipe)
        
        
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(handelDoubleTap(sender:)))
        doubleTap.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTap)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func handleLeftSwipe(sender:UISwipeGestureRecognizer){
        view.backgroundColor=UIColor.brown
    }
    @objc func handleRightSwipe(sender:UISwipeGestureRecognizer){
        view.backgroundColor = UIColor.green
    }
    @objc func handelDoubleTap(sender:UITapGestureRecognizer){
        view.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

