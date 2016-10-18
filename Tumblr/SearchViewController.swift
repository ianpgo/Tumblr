//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Go, Ian on 10/11/16.
//  Copyright © 2016 Go, Ian. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    
    var animatedImage: UIImage!

    @IBOutlet weak var searchFeedImageView: UIImageView!
    @IBOutlet weak var loadingImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        searchFeedImageView.isHidden = true
        loadingImageView.isHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImage(with: images, duration: 0.5)
        loadingImageView.image = animatedImage
        
        delay(1.0) {
            UIView.animate(withDuration: 0.2, animations: {
                self.searchFeedImageView.isHidden = false
                self.loadingImageView.isHidden = true
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
