//
//  ViewController.swift
//  testTask
//
//  Created by Клоун on 13.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let testView = TestView()
    
    private let backgroundBubbleImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bubbles")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        activateConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.4071775079, green: 0.4321837425, blue: 0.7676690221, alpha: 1)
        view.addSubview(backgroundBubbleImage)
        view.addSubview(testView)
        testView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backgroundBubbleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor))
        constraints.append(backgroundBubbleImage.leftAnchor.constraint(equalTo: view.leftAnchor))
        constraints.append(backgroundBubbleImage.rightAnchor.constraint(equalTo: view.rightAnchor))
        constraints.append(backgroundBubbleImage.widthAnchor.constraint(equalTo: view.widthAnchor))
        constraints.append(backgroundBubbleImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6))
        
        constraints.append(testView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(testView.centerYAnchor.constraint(equalTo: view.centerYAnchor))
        constraints.append(testView.widthAnchor.constraint(equalToConstant: 100))
        constraints.append(testView.heightAnchor.constraint(equalToConstant: 100))
        NSLayoutConstraint.activate(constraints)
    }
    
}

