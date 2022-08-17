//
//  StorageInfoView.swift
//  testTask
//
//  Created by Клоун on 13.08.2022.
//

import UIKit

class StorageInfoView: UIView {
    
    private var yourStorage: UILabel = {
        let yourStorageLabel = UILabel()
        yourStorageLabel.text = "Your Storage"
        yourStorageLabel.textColor = .white
        yourStorageLabel.font = .systemFont(ofSize: 30)
        yourStorageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return yourStorageLabel
    }()
    
    private var percent: UILabel = {
        let percentLabel = UILabel()
        percentLabel.text = "76%"
        percentLabel.textColor = .white
        percentLabel.font = .systemFont(ofSize: 50)
        percentLabel.textAlignment = .center
        percentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return percentLabel
    }()
    
    private var totalMemory: UILabel = {
        let totalMemoryLabel = UILabel()
        totalMemoryLabel.text = "Total memory:"
        totalMemoryLabel.textColor = .white
        totalMemoryLabel.textAlignment = .center
        totalMemoryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return totalMemoryLabel
    }()
    
    private var currentMemory: UILabel = {
        let currentMemory = UILabel()
        currentMemory.text = "128 GB"
        currentMemory.textColor = .white
        currentMemory.textAlignment = .center
        currentMemory.translatesAutoresizingMaskIntoConstraints = false
        
        return currentMemory
    }()
    
    private var availableMemory: UILabel = {
        let availableMemoryLabel = UILabel()
        availableMemoryLabel.text = "Available:"
        availableMemoryLabel.textColor = .white
        availableMemoryLabel.textAlignment = .center
        availableMemoryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return availableMemoryLabel
    }()
    
    private var currentAvailableMemory: UILabel = {
        let currentMemory = UILabel()
        currentMemory.text = "24 GB"
        currentMemory.textColor = .white
        currentMemory.textAlignment = .center
        currentMemory.translatesAutoresizingMaskIntoConstraints = false
        
        return currentMemory
    }()
    
    private var trashSize: UILabel = {
        let trashSizeLabel = UILabel()
        trashSizeLabel.text = "Trash size:"
        trashSizeLabel.textColor = .white
        trashSizeLabel.textAlignment = .left
        trashSizeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return trashSizeLabel
    }()
    
    private var currentTrashSize: UILabel = {
        let currentTrashSize = UILabel()
        currentTrashSize.text = "470 MB"
        currentTrashSize.textColor = .white
        currentTrashSize.textAlignment = .left
        currentTrashSize.translatesAutoresizingMaskIntoConstraints = false
        
        return currentTrashSize
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
        backgroundColor = .white.withAlphaComponent(0.3)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        
        addSubview(yourStorage)
        addSubview(percent)
        addSubview(totalMemory)
        addSubview(currentMemory)
        addSubview(availableMemory)
        addSubview(currentAvailableMemory)
        addSubview(trashSize)
        addSubview(currentTrashSize)
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(yourStorage.topAnchor.constraint(equalTo: topAnchor, constant: 30))
        constraints.append(yourStorage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(percent.topAnchor.constraint(equalTo: yourStorage.topAnchor, constant: 40))
        constraints.append(percent.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(currentMemory.topAnchor.constraint(equalTo: percent.topAnchor, constant: 60))
        constraints.append(currentMemory.rightAnchor.constraint(equalTo: rightAnchor, constant: -30))
        
        constraints.append(totalMemory.topAnchor.constraint(equalTo: percent.topAnchor, constant: 60))
        constraints.append(totalMemory.rightAnchor.constraint(equalTo: currentMemory.leftAnchor, constant: -10))
        
        constraints.append(currentAvailableMemory.topAnchor.constraint(equalTo: currentMemory.topAnchor, constant: 25))
        constraints.append(currentAvailableMemory.rightAnchor.constraint(equalTo: rightAnchor, constant: -35))
        
        constraints.append(availableMemory.topAnchor.constraint(equalTo: totalMemory.topAnchor, constant: 25))
        constraints.append(availableMemory.rightAnchor.constraint(equalTo: currentAvailableMemory.leftAnchor, constant: -15))
        
        constraints.append(trashSize.topAnchor.constraint(equalTo: availableMemory.topAnchor, constant: 25))
        constraints.append(trashSize.rightAnchor.constraint(equalTo: currentTrashSize.leftAnchor, constant: -4))
        
        constraints.append(currentTrashSize.topAnchor.constraint(equalTo: currentAvailableMemory.topAnchor, constant: 25))
        constraints.append(currentTrashSize.rightAnchor.constraint(equalTo: rightAnchor, constant: -35))
        
        NSLayoutConstraint.activate(constraints)
    }

}

