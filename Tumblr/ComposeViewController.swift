//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Go, Ian on 10/11/16.
//  Copyright © 2016 Go, Ian. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    //top row
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var textButton: UIButton!
    
    //bottom row
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var topRowYFinal: CGFloat!
    var bottomRowYFinal: CGFloat!
    
    
    override func viewWillAppear(_ animated: Bool) {
        //store final y of buttons
        topRowYFinal = quoteButton.center.y
        bottomRowYFinal = linkButton.center.y
        
        //top row
        textButton.frame.origin.y = view.frame.height
        photoButton.frame.origin.y = view.frame.height
        quoteButton.frame.origin.y = view.frame.height
        
        //bottom row
        linkButton.frame.origin.y = view.frame.height
        chatButton.frame.origin.y = view.frame.height
        videoButton.frame.origin.y = view.frame.height
        
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
        //top row animations
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseOut, animations: {
            self.textButton.center.y = self.topRowYFinal
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
            self.photoButton.center.y = self.topRowYFinal
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseOut, animations: {
            self.quoteButton.center.y = self.topRowYFinal
            }, completion: nil)
        
        //bottom row animations
        UIView.animate(withDuration: 0.2, delay: 0.3, options: .curveEaseOut, animations: {
            self.linkButton.center.y = self.bottomRowYFinal
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseOut, animations: {
            self.chatButton.center.y = self.bottomRowYFinal
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.4, options: .curveEaseOut, animations: {
            self.videoButton.center.y = self.bottomRowYFinal
            }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapNevermind(_ sender: UIButton) {

        //top row animations
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseOut, animations: {
            self.textButton.center.y = -100            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
            self.photoButton.center.y = -100
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseOut, animations: {
            self.quoteButton.center.y = -100
            }, completion: nil)
        
        //bottom row animations
        UIView.animate(withDuration: 0.2, delay: 0.3, options: .curveEaseOut, animations: {
            self.linkButton.center.y = -100
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseOut, animations: {
            self.chatButton.center.y = -100
            }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.4, options: .curveEaseOut, animations: {
            self.videoButton.center.y = -100
            }, completion:{ (Bool) in
                self.textButton.isHidden = true
                self.photoButton.isHidden = true
                self.quoteButton.isHidden = true
                self.linkButton.isHidden = true
                self.chatButton.isHidden = true
                self.videoButton.isHidden = true
                
                self.dismiss(animated: true, completion: {})
        })
    }
}
