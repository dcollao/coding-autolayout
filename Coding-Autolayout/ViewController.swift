//https://github.com/dcollao/coding-autolayout.git
//
//  ViewController.swift
//  Coding-Autolayout
//
//  Created by Diego  Collao on 23-06-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //First I need to create the new views :)
    
    let orangeView = UIView()
    let purpleView = UIView()
    let blueView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //So I can use the properties of orangView like backgroundColor (orange).
        orangeView.backgroundColor = UIColor(red: 255/255.0,
                                             green: 148/255.0,
                                             blue: 0/255.0,
                                             alpha: 1.0)
        view.addSubview(orangeView)
        
        purpleView.backgroundColor = UIColor(red: 204/255.0,
                                             green: 102/255.0,
                                             blue: 255/255.0,
                                             alpha: 1.0)
        view.addSubview(purpleView)
        
        blueView.backgroundColor = UIColor(red: 102/255.0,
                                           green: 204/255.0,
                                           blue: 255/255.0,
                                           alpha: 1.0)
        view.addSubview(blueView)
        
        
        
    }
    
    override func viewWillLayoutSubviews() {
        setupOrangeViewConstraints()
        setupPurpleViewConstraints()
        setupBlueViewConstraints()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupOrangeViewConstraints(){
        //To use constraints the first thing we need to do is put
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        //that in false.
        
        
        NSLayoutConstraint.activate([
            orangeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orangeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.0),
            orangeView.heightAnchor.constraint(equalToConstant: 57.0),
            orangeView.widthAnchor.constraint(equalToConstant: 200.0)
            ])
        
        //All that code after of this is the same writed in another way.
        
        
        /*
         
         //The item is the view who we are setting constraints
         //the attribute is the constraint, you put . and 'll show the respective options.
         //relatedBy can be equal, greaterThanOrEqual, lessThanOrEqual
         //Superview = view
         
         
         let orangeViewCenterXConstraint = NSLayoutConstraint(item: orangeView,
         attribute: .centerX,
         relatedBy: .equal,
         toItem: view,
         attribute: .centerX,
         multiplier: 1.0,
         constant: 0.0)
         
         let orangeViewBottomSpaceConstraint = NSLayoutConstraint(item: orangeView,
         attribute: .bottom,
         relatedBy: .equal,
         toItem: view,
         attribute: .bottomMargin,
         multiplier: 1.0,
         constant: -50.0)
         
         //Remember the origin of the view start in the top 0,0 ...
         
         let orangeViewHeightConstraint = NSLayoutConstraint(item: orangeView,
         attribute: .height,
         relatedBy: .equal,
         toItem: nil,
         attribute: .notAnAttribute,
         multiplier: 1.0,
         constant: 57.0)
         
         let orangeViewWidthConstraint = NSLayoutConstraint(item: orangeView,
         attribute: .width,
         relatedBy: .equal,
         toItem: nil,
         attribute: .notAnAttribute,
         multiplier: 1.0,
         constant: 200.0)
         
         
         view.addConstraints([
         orangeViewCenterXConstraint,
         orangeViewWidthConstraint,
         orangeViewHeightConstraint,
         orangeViewBottomSpaceConstraint])
         
         */
        
    }
    
    
    func setupPurpleViewConstraints(){
        
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            purpleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0),
            purpleView.bottomAnchor.constraint(equalTo: orangeView.topAnchor, constant: -8.0),
            purpleView.trailingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: -8.0),
            purpleView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0)])
        
        /*
         let purpleViewLeadingSpaceConstraint = NSLayoutConstraint(item: purpleView,
         attribute: .leading,
         relatedBy: .equal,
         toItem: view,
         attribute: .leadingMargin,
         multiplier: 1.0,
         constant: 8.0)
         
         let purpleViewBottomSpaceConstraint = NSLayoutConstraint(item: purpleView,
         attribute: .bottom,
         relatedBy: .equal,
         toItem: orangeView,
         attribute: .top,
         multiplier: 1.0,
         constant: -8.0)
         
         let purpleViewTrailingSpaceConstraint = NSLayoutConstraint(item: purpleView,
         attribute: .trailing,
         relatedBy: .equal,
         toItem: blueView,
         attribute: .leading,
         multiplier: 1.0,
         constant:  -8.0)
         
         
         //I use topLayoutGuide or botLayoutGuide when I need to use the margin.
         let purpleViewTopSpaceConstraint = NSLayoutConstraint(item: purpleView,
         attribute: .top,
         relatedBy: .equal,
         toItem: self.topLayoutGuide,
         attribute: .bottom,
         multiplier: 1.0,
         constant: 8.0)
         
         
         view.addConstraints([
         //purpleViewLeadingSpaceConstraint,
         //purpleViewBottomSpaceConstraint,
         //purpleViewTrailingSpaceConstraint,
         purpleViewTopSpaceConstraint])
         */
        
    }
    
    func setupBlueViewConstraints(){
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0),
            blueView.bottomAnchor.constraint(equalTo: orangeView.topAnchor, constant: -8.0),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0),
            blueView.widthAnchor.constraint(equalTo: purpleView.widthAnchor, constant: 0.0)])
        
        
        
        
        /*let blueViewTopSpaceConstraint = NSLayoutConstraint(item: blueView,
         attribute: .top,
         relatedBy: .equal,
         toItem: self.topLayoutGuide,
         attribute: .bottom,
         multiplier: 1.0,
         constant: 8.0)
         
         let blueViewBottomSpaceConstraint = NSLayoutConstraint(item: blueView,
         attribute: .bottom,
         relatedBy: .equal,
         toItem: orangeView,
         attribute: .top,
         multiplier: 1.0,
         constant: -8.0)
         
         let blueViewTrailingSpaceConstraint = NSLayoutConstraint(item: blueView,
         attribute: .trailing,
         relatedBy: .equal,
         toItem: view,
         attribute: .trailingMargin,
         multiplier: 1.0,
         constant:  -8.0)
         
         let equalWidthConstraints = NSLayoutConstraint(item: blueView,
         attribute: .width,
         relatedBy: .equal,
         toItem: purpleView,
         attribute: .width,
         multiplier: 1.0,
         constant: 0.0)*/
        
        //view.addConstraints([
        //blueViewTopSpaceConstraint])
        // blueViewTrailingSpaceConstraint,
        //blueViewTopSpaceConstraint,
        // equalWidthConstraints
        
    }
    
    
    
    
}

