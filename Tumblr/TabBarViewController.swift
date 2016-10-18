//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Go, Ian on 10/11/16.
//  Copyright © 2016 Go, Ian. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var explorePopImageView: UIImageView!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        //set first view
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        UIView.animate(withDuration: 0.8, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.explorePopImageView.center.y += 5
            }) { (Bool) in
                //nothing
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        //store current tab to prev
        let previousIndex = selectedIndex
        
        //set the new tab to selected
        selectedIndex = sender.tag
        
        //set previous tab button to disabled
        buttons[previousIndex].isSelected = false
        
        //store previous tab VC
        let previousVC = viewControllers[previousIndex]
        
        //remove previous VC
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //set new selected button to true
        sender.isSelected = true
        
        //store new vc
        let vc = viewControllers[selectedIndex]
        
        //add new VC
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
        
    }
    @IBAction func didPressSearch(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) { 
            self.explorePopImageView.isHidden = true
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationViewController = segue.destination
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        fadeTransition = FadeTransition()
        
        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 1.0
        
    }

}
