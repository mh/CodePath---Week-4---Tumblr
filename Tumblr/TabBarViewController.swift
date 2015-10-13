//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by matt hunter on 10/9/15.
//  Copyright © 2015 matt hunter. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {


    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    
    // setup the tab bar
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var homeTabButton: UIButton!
    @IBOutlet weak var searchTabButton: UIButton!
    @IBOutlet weak var composeTabButton: UIButton!
    @IBOutlet weak var accountTabButton: UIButton!
    @IBOutlet weak var trendingTabButton: UIButton!
    
    // all of the view controllers
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    // determine whether search was shown for tool tip
    var wasSearchShown: Bool = false
    @IBOutlet weak var explorePopUpImage: UIImageView!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    @IBOutlet weak var loadingImage: UIImageView!
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!

    var images: [UIImage]!
    var animatedImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarView.backgroundColor = UIColor(red: 50/255, green: 66/255, blue: 87/255, alpha: 1)
        self.view.backgroundColor = UIColor(red: 51/255, green: 69/255, blue: 92/255, alpha: 1)
        
        // set the storyboards
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        // put the view controllers in an array to be selected from
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        // which button was selected
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        // loading animation sequence
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        loadingImage.image = animatedImage
        loadingImage.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressTab(sender: UIButton) {
        
        // set previous tab number
        let previousIndex = selectedIndex
        print("previous index \(previousIndex)")
        
        // set current selected tab
        selectedIndex = sender.tag
        print("selected index \(selectedIndex)")
        
        // previous view controller and button
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        
        // remove the previous ViewController
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        // set current button
        sender.selected = true
        
        // set the current view controller
        let vc = viewControllers[selectedIndex]
        
        // display current view controller
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        // hide / show tool tip logic
        explorePopUpImage.hidden = false
        
        if selectedIndex != 1 && wasSearchShown == false {
            explorePopUpImage.hidden = false
            print(wasSearchShown)
        } else {
            explorePopUpImage.hidden = true
            wasSearchShown = true
        }
        
        // loading animation sequence
        contentView.hidden = true
        loadingImage.hidden = false
        delay(0.3) {
            self.loadingImage.hidden = true
            self.contentView.hidden = false
        }
        
    }
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
