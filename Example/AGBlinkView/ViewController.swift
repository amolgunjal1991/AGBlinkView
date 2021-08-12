//
//  ViewController.swift
//  AGBlinkView
//
//  Created by amolgunjal1991 on 08/11/2021.
//  Copyright (c) 2021 amolgunjal1991. All rights reserved.
//

import UIKit
import AGBlinkView

class ViewController: UIViewController {

    //MARK:- Variables
    var blinkView = AGBlinkView()
    
    //MARK:- Liecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBlinkView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Setup the blinkview
    func setupBlinkView() {
        self.view.addSubview(blinkView)
        blinkView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blinkView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blinkView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            blinkView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
            blinkView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width)
        ])
    }
    
}

