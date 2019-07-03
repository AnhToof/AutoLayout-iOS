//
//  ViewController.swift
//  AutoLayout
//
//  Created by TuanAnh on 7/3/19.
//  Copyright © 2019 Toof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initViews()
    }
    
    func initViews() {
        //Red view
        let redView = UIView()
        redView.backgroundColor = .red
        view.addSubview(redView)
        let topRedView = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let leadingRedView = NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingRedView = NSLayoutConstraint(item: redView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightRedView = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.5, constant: 0)
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topRedView, leadingRedView, trailingRedView, heightRedView])
        
        //Blue view
        let blueView = UIView()
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        let topBlueView = NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingBlueView = NSLayoutConstraint(item: blueView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let bottomBlueView = NSLayoutConstraint(item: blueView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        let widthBlueView = NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: redView, attribute: .width, multiplier: 0.5, constant: 0)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topBlueView, leadingBlueView, bottomBlueView, widthBlueView])
        
        //Orange view
        let orangeView = UIView()
        orangeView.backgroundColor = .orange
        view.addSubview(orangeView)
        let topOrangeView = NSLayoutConstraint(item: orangeView, attribute: .top, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingOrangeView = NSLayoutConstraint(item: orangeView, attribute: .leading, relatedBy: .equal, toItem: blueView, attribute: .trailing, multiplier: 1, constant: 0)
        let trailingOrangeView = NSLayoutConstraint(item: orangeView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightOrangeView = NSLayoutConstraint(item: orangeView, attribute: .height, relatedBy: .equal, toItem: blueView, attribute: .height, multiplier: 0.5, constant: 0)
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topOrangeView, leadingOrangeView, trailingOrangeView, heightOrangeView])
        
        //Green view
        let greenView = UIView()
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        let topGreenView = NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: orangeView, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingGreenView = NSLayoutConstraint(item: greenView, attribute: .leading, relatedBy: .equal, toItem: blueView, attribute: .trailing, multiplier: 1, constant: 0)
        let bottomGreenView = NSLayoutConstraint(item: greenView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        let widthGreenView = NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: orangeView, attribute: .width, multiplier: 0.5, constant: 0)
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topGreenView, leadingGreenView, bottomGreenView, widthGreenView])
    }
}
