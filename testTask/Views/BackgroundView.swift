//
//  BackgroundView.swift
//  testTask
//
//  Created by Клоун on 15.08.2022.
//

import UIKit

class BackgroundView: UIView {
    
    private let downLineImage: UIImageView = {
        let downLineImage = UIImageView()
        downLineImage.image = UIImage(named: "downLine")
        downLineImage.backgroundColor = .white
        downLineImage.translatesAutoresizingMaskIntoConstraints = false
        downLineImage.clipsToBounds = true
        return downLineImage
    }()
    
    let numberOfFiles: UILabel = {
        let numberOfFiles = UILabel()
        numberOfFiles.textColor = .white
        numberOfFiles.text = ""
        numberOfFiles.textAlignment = .center
        numberOfFiles.translatesAutoresizingMaskIntoConstraints = false
        numberOfFiles.font = .systemFont(ofSize: 13)
        return numberOfFiles
    }()
    
    let numberOfDuplicate: UILabel = {
        let numberOfDuplicate = UILabel()
        numberOfDuplicate.textColor = .lightGray
        numberOfDuplicate.text = ""
        numberOfDuplicate.textAlignment = .center
        numberOfDuplicate.translatesAutoresizingMaskIntoConstraints = false
        numberOfDuplicate.font = .systemFont(ofSize: 11)
        return numberOfDuplicate
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
        backgroundColor = #colorLiteral(red: 0.4561138153, green: 0.4710829854, blue: 0.7490229011, alpha: 1)
        
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = 60
        
        downLineImage.layer.cornerRadius = 10
        
        addSubview(numberOfFiles)
        addSubview(numberOfDuplicate)
        addSubview(downLineImage)
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(downLineImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(downLineImage.topAnchor.constraint(equalTo: topAnchor, constant: -5))
        constraints.append(downLineImage.widthAnchor.constraint(equalToConstant: 25))
        constraints.append(downLineImage.heightAnchor.constraint(equalToConstant: 15))
        
        constraints.append(numberOfFiles.centerXAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(numberOfFiles.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        
        constraints.append(numberOfDuplicate.centerXAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(numberOfDuplicate.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10))
        
        NSLayoutConstraint.activate(constraints)
    }
}
