//
//  SecurityView.swift
//  testTask
//
//  Created by Клоун on 14.08.2022.
//

import UIKit

class SecurityView: UIView {
    
    private let fingerImage: UIImageView = {
        let fingerImage = UIImageView()
        fingerImage.image = UIImage(named: "finger")
        fingerImage.translatesAutoresizingMaskIntoConstraints = false
        return fingerImage
    }()
    
    private var secretStorage: UILabel = {
        let secretStorageLabel = UILabel()
        secretStorageLabel.text = "SECRET STORAGE"
        secretStorageLabel.textColor = #colorLiteral(red: 0.4022993147, green: 0.4323382378, blue: 0.7677036524, alpha: 1)
        secretStorageLabel.numberOfLines = 2
        secretStorageLabel.font = .systemFont(ofSize: 17)
        secretStorageLabel.textAlignment = .center
        secretStorageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return secretStorageLabel
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
        
        addSubview(fingerImage)
        addSubview(secretStorage)
        backgroundColor = .white
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(fingerImage.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        constraints.append(fingerImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(secretStorage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20))
        constraints.append(secretStorage.leftAnchor.constraint(equalTo: leftAnchor, constant: 20))
        constraints.append(secretStorage.rightAnchor.constraint(equalTo: rightAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
