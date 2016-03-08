//
//  ViewController.swift
//  newLockScreen
//
//  Created by Adithya Bharadwaj on 17/11/15.
//  Copyright © 2015 Adithya Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var scrollLabel: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc0 = ViewController2(nibName: "ViewController2", bundle: nil)
        
        self.addChildViewController(vc0)
        self.scrollLabel.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle: nil)
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollLabel.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        self.scrollLabel.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height)
        
        self.scrollLabel.contentOffset =  CGPointMake(400, 0);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

