//
//  ViewController2.swift
//  newLockScreen
//
//  Created by Adithya Bharadwaj on 17/11/15.
//  Copyright © 2015 Adithya Bharadwaj. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var counts : Int = 0
    var pswd = String()
    
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btn1(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "1"
        
    }
    
    @IBAction func btn2(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "2"
    }
    
    
    @IBAction func btn3(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "3"
    }
    
    @IBAction func btn4(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "4"
    }
    
    @IBAction func btn5(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "5"
    }
    
    @IBAction func btn6(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "6"
    }
    
    @IBAction func btn7(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "7"
    }
    
    @IBAction func btn8(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "8"
    }
    
    @IBAction func btn9(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "9"
    }
    
    @IBAction func btn0(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "0"
    }
    
    
    @IBAction func btnStar(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "*"
    }
    
    @IBAction func btnHash(sender: AnyObject) {
        counts++
        changeImage()
        pswd += "#"
    }
    
    @IBAction func btnCancel(sender: AnyObject) {
        counts--
        switch(counts)
        {
        case 3 : img4.image = UIImage(named: "white.png")
        case 2 : img3.image = UIImage(named: "white.png")
        case 1 : img2.image = UIImage(named: "white.png")
        case 0 : img1.image = UIImage(named: "white.png")
        default :counts = 0
            
        }
    }
    
    
    
    func changeImage()
    {
        switch(counts)
        {
        case 0 :        img1.image = UIImage(named: "white.png")
        img2.image = UIImage(named: "white.png")
        img3.image = UIImage(named: "white.png")
        img4.image = UIImage(named: "white.png")
        case 1 :             img1.image = UIImage(named: "dot.png")
        case 2 :             img2.image = UIImage(named: "dot.png")
        case 3 :             img3.image = UIImage(named: "dot.png")
        case 4 :             img4.image = UIImage(named: "dot.png")
        default :            counts = 4
            
        }
        
    }
    
    @IBAction func btnOk(sender: AnyObject) {
        if(pswd == "1991")
        {
            pswd = ""
            
            alertMessage("Success")
            //let vc3 = newViewController(nibName : "newViewController", bundle: nil)
            
            //var frame2 = vc3.view.frame
            //frame2.origin.x = self.view.frame.size.width
            //self.addChildViewController(vc3)
            //vc3.didMoveToParentViewController(self)
            //self.dismissViewControllerAnimated(true, completion: nil)
            //self.presentViewController(vc3, animated: true, completion: nil)
        
           //performSegueWithIdentifier("display", sender: self)
        }
        else
        {
            pswd = ""
            counts = 0
            changeImage()
            shakeImage(img1)
            shakeImage(img2)
            shakeImage(img3)
            shakeImage(img4)
            //alertMessage("Failed")
            
        }
        
    }
    
    func alertMessage(msg:String)
    {
        let statusMsg = msg.self
        print(statusMsg, terminator: "")
        let alert1 = UIAlertController(title: "Status", message: statusMsg, preferredStyle: .Alert)
        let action1 = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default)
            {
                ACTION in
                self.counts = 0
                self.changeImage()
        }
        alert1.addAction(action1)
        self.presentViewController(alert1, animated: true,completion : nil)
        
    }
    
    func shakeImage(sender : AnyObject)
    {
        var tmpImage = sender
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPointMake(tmpImage.center.x - 10, tmpImage.center.y))
        animation.toValue = NSValue(CGPoint: CGPointMake(tmpImage.center.x + 10, tmpImage.center.y))
        tmpImage.layer.addAnimation(animation, forKey: "position")
        
        
    }


}
