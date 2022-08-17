//
//  DuplicatesPhoto.swift
//  testTask
//
//  Created by Клоун on 14.08.2022.
//

import UIKit

class DuplicatesPhotosView: UIView {
    
    private let backgroundView = BackgroundView()
    
    private let photosDuplicateImage: UIImageView = {
        let photosDuplicateImage = UIImageView()
        photosDuplicateImage.image = UIImage(named: "duplicatePhoto")
        photosDuplicateImage.translatesAutoresizingMaskIntoConstraints = false
        return photosDuplicateImage
    }()
    
    private var duplicatePhotos: UILabel = {
        let duplicatePhotos = UILabel()
        duplicatePhotos.text = "Duplicates photos"
        duplicatePhotos.textColor = #colorLiteral(red: 0.4022993147, green: 0.4323382378, blue: 0.7677036524, alpha: 1)
        duplicatePhotos.font = .systemFont(ofSize: 13)
        duplicatePhotos.textAlignment = .center
        duplicatePhotos.translatesAutoresizingMaskIntoConstraints = false
        return duplicatePhotos
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
        
        backgroundView.numberOfFiles.text = "120 files"
        backgroundView.numberOfDuplicate.text = "20 duplicate"
        
        addSubview(photosDuplicateImage)
        addSubview(duplicatePhotos)
        addSubview(backgroundView)
        backgroundColor = .white
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(photosDuplicateImage.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        constraints.append(photosDuplicateImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(duplicatePhotos.topAnchor.constraint(equalTo: photosDuplicateImage.topAnchor, constant: 40))
        constraints.append(duplicatePhotos.leftAnchor.constraint(equalTo: leftAnchor, constant: 5))
        constraints.append(duplicatePhotos.rightAnchor.constraint(equalTo: rightAnchor, constant: -5))
        constraints.append(duplicatePhotos.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(backgroundView.leftAnchor.constraint(equalTo: leftAnchor))
        constraints.append(backgroundView.rightAnchor.constraint(equalTo: rightAnchor))
        constraints.append(backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(backgroundView.widthAnchor.constraint(equalToConstant: 60))
        constraints.append(backgroundView.heightAnchor.constraint(equalToConstant: 50))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
