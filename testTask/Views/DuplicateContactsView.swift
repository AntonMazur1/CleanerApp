//
//  DuplicateVideos.swift
//  testTask
//
//  Created by Клоун on 15.08.2022.
//

import UIKit

class DuplicateContactsView: UIView {
    
    private let backgroundView = BackgroundView()
    
    private let contactsDuplicateImage: UIImageView = {
        let contactsDuplicateImage = UIImageView()
        contactsDuplicateImage.image = UIImage(named: "contacts")
        contactsDuplicateImage.translatesAutoresizingMaskIntoConstraints = false
        return contactsDuplicateImage
    }()
    
    private var duplicateContacts: UILabel = {
        let duplicateContacts = UILabel()
        duplicateContacts.text = "Duplicates contacts"
        duplicateContacts.textColor = #colorLiteral(red: 0.4022993147, green: 0.4323382378, blue: 0.7677036524, alpha: 1)
        duplicateContacts.font = .systemFont(ofSize: 12)
        duplicateContacts.textAlignment = .center
        duplicateContacts.translatesAutoresizingMaskIntoConstraints = false
        
        return duplicateContacts
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
        
        backgroundView.numberOfFiles.text = "30 contacts"
        backgroundView.numberOfDuplicate.text = "3 duplicate"
        
        addSubview(contactsDuplicateImage)
        addSubview(duplicateContacts)
        addSubview(backgroundView)
        backgroundColor = .white
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(contactsDuplicateImage.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        constraints.append(contactsDuplicateImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(duplicateContacts.topAnchor.constraint(equalTo: contactsDuplicateImage.topAnchor, constant: 40))
        constraints.append(duplicateContacts.leftAnchor.constraint(equalTo: leftAnchor, constant: 2))
        constraints.append(duplicateContacts.rightAnchor.constraint(equalTo: rightAnchor, constant: -2))
        constraints.append(duplicateContacts.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(backgroundView.leftAnchor.constraint(equalTo: leftAnchor))
        constraints.append(backgroundView.rightAnchor.constraint(equalTo: rightAnchor))
        constraints.append(backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(backgroundView.widthAnchor.constraint(equalToConstant: 60))
        constraints.append(backgroundView.heightAnchor.constraint(equalToConstant: 50))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
