//
//  DuplicateScreenshots.swift
//  testTask
//
//  Created by Клоун on 15.08.2022.
//

import UIKit

class DuplicateScreenshotsView: UIView {
    
    private let backgroundView = BackgroundView()
    
    private let screenshotsDuplicateImage: UIImageView = {
        let screenshotsDuplicateImage = UIImageView()
        screenshotsDuplicateImage.image = UIImage(named: "screenshots")
        screenshotsDuplicateImage.translatesAutoresizingMaskIntoConstraints = false
        return screenshotsDuplicateImage
    }()
    
    private var duplicateScreenshots: UILabel = {
        let duplicateScreenshots = UILabel()
        duplicateScreenshots.text = "Duplicates screenshots"
        duplicateScreenshots.textColor = #colorLiteral(red: 0.4022993147, green: 0.4323382378, blue: 0.7677036524, alpha: 1)
        duplicateScreenshots.font = .systemFont(ofSize: 10)
        duplicateScreenshots.textAlignment = .center
        duplicateScreenshots.translatesAutoresizingMaskIntoConstraints = false
        
        return duplicateScreenshots
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        activateConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        activateConstraints()
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        
        backgroundView.numberOfFiles.text = "12 files"
        backgroundView.numberOfDuplicate.text = "2 duplicate"
        
        addSubview(screenshotsDuplicateImage)
        addSubview(duplicateScreenshots)
        addSubview(backgroundView)
        backgroundColor = .white
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(screenshotsDuplicateImage.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        constraints.append(screenshotsDuplicateImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(duplicateScreenshots.topAnchor.constraint(equalTo: screenshotsDuplicateImage.topAnchor, constant: 40))
        constraints.append(duplicateScreenshots.leftAnchor.constraint(equalTo: leftAnchor, constant: 2))
        constraints.append(duplicateScreenshots.rightAnchor.constraint(equalTo: rightAnchor, constant: -2))
        constraints.append(duplicateScreenshots.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(backgroundView.leftAnchor.constraint(equalTo: leftAnchor))
        constraints.append(backgroundView.rightAnchor.constraint(equalTo: rightAnchor))
        constraints.append(backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(backgroundView.widthAnchor.constraint(equalToConstant: 60))
        constraints.append(backgroundView.heightAnchor.constraint(equalToConstant: 50))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
