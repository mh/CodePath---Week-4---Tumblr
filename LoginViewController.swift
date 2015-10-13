//
//  LoginViewController.swift
//  Tumblr
//
//  Created by matt hunter on 10/12/15.
//  Copyright © 2015 matt hunter. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 51/255, green: 69/255, blue: 92/255, alpha: 1)
        // Do any additional setup after loading the view.
    }

    @IBAction func cancelButton(sender: AnyObject) {
                self.dismissViewControllerAnimated(true, completion: nil)
        
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
