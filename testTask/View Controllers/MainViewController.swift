//
//  ViewController.swift
//  testTask
//
//  Created by Клоун on 13.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let storageView = StorageInfoView()
    private let securityView = SecurityView()
    private let allPhotosView = AllPhotosView()
    private let allVideosView = AllVideosView()
    private let duplicatePhoto = DuplicatesPhotosView()
    private let duplicateContacts = DuplicateContactsView()
    private let duplicateScreenshots = DuplicateScreenshotsView()
    
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
        configureItems()
    }
    
    override func viewDidLayoutSubviews() {
        storageView.layer.cornerRadius = storageView.frame.height / 2
        securityView.layer.cornerRadius = securityView.frame.height / 2
        allPhotosView.layer.cornerRadius = allPhotosView.frame.height / 2
        allVideosView.layer.cornerRadius = allVideosView.frame.height / 2
        duplicatePhoto.layer.cornerRadius = duplicatePhoto.frame.height / 2
        duplicateContacts.layer.cornerRadius = duplicateContacts.frame.height / 2
        duplicateScreenshots.layer.cornerRadius = duplicateScreenshots.frame.height / 2
    }
    
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.4071775079, green: 0.4321837425, blue: 0.7676690221, alpha: 1)
        view.addSubview(backgroundBubbleImage)
        view.addSubview(storageView)
        view.addSubview(securityView)
        view.addSubview(allPhotosView)
        view.addSubview(allVideosView)
        view.addSubview(duplicatePhoto)
        view.addSubview(duplicateContacts)
        view.addSubview(duplicateScreenshots)
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backgroundBubbleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor))
        constraints.append(backgroundBubbleImage.leftAnchor.constraint(equalTo: view.leftAnchor))
        constraints.append(backgroundBubbleImage.rightAnchor.constraint(equalTo: view.rightAnchor))
        constraints.append(backgroundBubbleImage.widthAnchor.constraint(equalTo: view.widthAnchor))
        constraints.append(backgroundBubbleImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6))
        
        constraints.append(storageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(storageView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(storageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6))
        constraints.append(storageView.heightAnchor.constraint(equalTo: storageView.widthAnchor))
        
        constraints.append(securityView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(securityView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120))
        constraints.append(securityView.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(securityView.heightAnchor.constraint(equalToConstant: 120))
        
        constraints.append(allPhotosView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50))
        constraints.append(allPhotosView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        constraints.append(allPhotosView.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(allPhotosView.heightAnchor.constraint(equalToConstant: 120))
        
        constraints.append(allVideosView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50))
        constraints.append(allVideosView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        constraints.append(allVideosView.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(allVideosView.heightAnchor.constraint(equalToConstant: 120))
        
        constraints.append(duplicatePhoto.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20))
        constraints.append(duplicatePhoto.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -190))
        constraints.append(duplicatePhoto.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(duplicatePhoto.heightAnchor.constraint(equalToConstant: 120))
        
        constraints.append(duplicateContacts.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20))
        constraints.append(duplicateContacts.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -190))
        constraints.append(duplicateContacts.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(duplicateContacts.heightAnchor.constraint(equalToConstant: 120))
        
        constraints.append(duplicateScreenshots.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(duplicateScreenshots.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -255))
        constraints.append(duplicateScreenshots.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(duplicateScreenshots.heightAnchor.constraint(equalToConstant: 120))
        
        NSLayoutConstraint.activate(constraints)
    }
}

//MARK: - Customize Navigation Bar
extension MainViewController {
    
    private func configureItems() {
        let backItem = UIBarButtonItem()
        backItem.image = UIImage(named: "backItem")
        backItem.tintColor = .white
        navigationItem.leftBarButtonItem = backItem
        
        let cleanerLogo = UIImageView()
        cleanerLogo.image = UIImage(named: "cleanerLogo")
        let cleanerLogoItem = UIBarButtonItem(customView: cleanerLogo)
        
        let cleanerLabel = UILabel()
        cleanerLabel.text = "CLEANER"
        cleanerLabel.textColor = .white
        let cleanerLabelItem = UIBarButtonItem(customView: cleanerLabel)
        
        navigationItem.rightBarButtonItems = [cleanerLabelItem, cleanerLogoItem]
    }
}

