//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by matt hunter on 10/9/15.
//  Copyright © 2015 matt hunter. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonOrigin: CGPoint!
    var photoButtonOrigin: CGPoint!
    var quoteButtonOrigin: CGPoint!
    var linkButtonOrigin: CGPoint!
    var chatButtonOrigin: CGPoint!
    var videoButtonOrigin: CGPoint!
    
    var viewTop: CGFloat!
    var viewBottom: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 59/255, green: 66/255, blue: 86/255, alpha: 0.9)

        viewTop = -textButton.frame.height
        viewBottom = view.frame.size.height
        
        textButtonOrigin = textButton.center
        photoButtonOrigin = photoButton.center
        quoteButtonOrigin = quoteButton.center
        linkButtonOrigin = linkButton.center
        chatButtonOrigin = chatButton.center
        videoButtonOrigin = videoButton.center
        
        textButton.frame.origin.y  = viewBottom
        photoButton.frame.origin.y = viewBottom
        quoteButton.frame.origin.y = viewBottom
        linkButton.frame.origin.y = viewBottom
        chatButton.frame.origin.y = viewBottom
        videoButton.frame.origin.y = viewBottom
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.textButton.center.y = self.textButtonOrigin.y
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.photoButton.center.y = self.photoButtonOrigin.y
            }) { (Bool) -> Void in

        }
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.quoteButton.center.y = self.quoteButtonOrigin.y
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.linkButton.center.y = self.linkButtonOrigin.y
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.chatButton.center.y = self.chatButtonOrigin.y
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.videoButton.center.y = self.videoButtonOrigin.y
            }) { (Bool) -> Void in
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nevermindButton(sender: AnyObject) {
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.textButton.center.y = self.viewTop
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.photoButton.center.y = self.viewTop
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.quoteButton.center.y = self.viewTop
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.linkButton.center.y = self.viewTop
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.chatButton.center.y = self.viewTop
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(0.4, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.videoButton.center.y = self.viewTop
            }) { (Bool) -> Void in
                self.textButton.hidden = true
                self.photoButton.hidden = true
                self.quoteButton.hidden = true
                self.linkButton.hidden = true
                self.chatButton.hidden = true
                self.videoButton.hidden = true
                self.dismissViewControllerAnimated(false, completion: nil)
        }
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
