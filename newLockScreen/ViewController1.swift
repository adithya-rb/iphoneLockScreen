//
//  ViewController1.swift
//  newLockScreen
//
//  Created by Adithya Bharadwaj on 17/11/15.
//  Copyright © 2015 Adithya Bharadwaj. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var unlock: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var shimmeringView : FBShimmeringView!
    
        override func viewDidLoad() {
        super.viewDidLoad()

            
            self.shimmeringView = FBShimmeringView(frame: self.unlock.frame)
            self.view.addSubview(self.shimmeringView)
            
            
          /* var loadingLabel : UILabel = UILabel(frame: self.shimmeringView.bounds)
            loadingLabel.textAlignment = .Center
            loadingLabel.text = "Adithya"
            */
            
    
            self.shimmeringView.contentView = unlock
            self.shimmeringView.shimmering = true
            self.shimmeringView.shimmeringBeginFadeDuration = 0.1
            self.shimmeringView.shimmeringOpacity = 0.5
            self.shimmeringView.shimmeringAnimationOpacity = 0.2
            self.shimmeringView.shimmeringSpeed = 100
        
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func updateTimer()
  {
    
    timeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.MediumStyle)
    
    
    
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
