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
        initViews()
    }

    func initViews() {
        //Red view
        let redView = UIView()
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5, constant: 0).isActive = true
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        //Blue view
        let blueView = UIView()
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        blueView.widthAnchor.constraint(equalTo: redView.widthAnchor, multiplier: 0.5, constant: 0).isActive = true
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        //Orange view
        let orangeView = UIView()
        orangeView.backgroundColor = .orange
        view.addSubview(orangeView)
        
        orangeView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0).isActive = true
        orangeView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 0).isActive = true
        orangeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        orangeView.heightAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 0.5, constant: 0).isActive = true
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        //Green view
        let greenView = UIView()
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        
        greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 0).isActive = true
        greenView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 0).isActive = true
        greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        greenView.widthAnchor.constraint(equalTo: orangeView.widthAnchor, multiplier: 0.5, constant: 0).isActive = true
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

