//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by matt hunter on 10/9/15.
//  Copyright © 2015 matt hunter. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var trendingScrollView: UIScrollView!
    
    @IBOutlet weak var trendingFeedView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 51/255, green: 69/255, blue: 92/255, alpha: 1)
        
        trendingScrollView.contentSize = CGSize(width: 320, height: 1564)
        trendingScrollView.contentSize = trendingFeedView.bounds.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
