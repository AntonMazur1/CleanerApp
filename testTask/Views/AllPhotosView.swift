//
//  SecurityView.swift
//  testTask
//
//  Created by Клоун on 14.08.2022.
//

import UIKit

class AllPhotosView: UIView {
    
    private let photosImage: UIImageView = {
        let photosImage = UIImageView()
        photosImage.image = UIImage(named: "photos")
        photosImage.translatesAutoresizingMaskIntoConstraints = false
        return photosImage
    }()
    
    private var allPhotos: UILabel = {
        let allPhotosLabel = UILabel()
        allPhotosLabel.text = "ALL PHOTOS"
        allPhotosLabel.textColor = #colorLiteral(red: 0.4022993147, green: 0.4323382378, blue: 0.7677036524, alpha: 1)
        allPhotosLabel.numberOfLines = 2
        allPhotosLabel.font = .systemFont(ofSize: 19)
        allPhotosLabel.textAlignment = .center
        allPhotosLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return allPhotosLabel
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
        
        addSubview(photosImage)
        addSubview(allPhotos)
        backgroundColor = .white
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(photosImage.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        constraints.append(photosImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(allPhotos.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20))
        constraints.append(allPhotos.leftAnchor.constraint(equalTo: leftAnchor, constant: 20))
        constraints.append(allPhotos.rightAnchor.constraint(equalTo: rightAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}

