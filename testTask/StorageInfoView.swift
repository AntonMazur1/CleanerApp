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
        
        return yourStorageLabel
    }()
    
    private var percent: UILabel = {
        let percentLabel = UILabel()
        percentLabel.text = "76%"
        
        return percentLabel
    }()
    
    private var totalMemory: UILabel = {
        let totalMemoryLabel = UILabel()
        totalMemoryLabel.text = "Total memory:"
        totalMemoryLabel.textColor = .gray
        
        return totalMemoryLabel
    }()
    
    private var availableMemory: UILabel = {
        let availableMemoryLabel = UILabel()
        availableMemoryLabel.text = "Available:"
        
        return availableMemoryLabel
    }()
    
    private var trashSize: UILabel = {
        let trashSizeLabel = UILabel()
        trashSizeLabel.text = "Trash size:"
        
        return trashSizeLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    
    
    private func setupView() {
        addSubview(yourStorage)
        addSubview(percent)
        addSubview(totalMemory)
        addSubview(availableMemory)
        addSubview(trashSize)
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(yourStorage.topAnchor.constraint(equalTo: topAnchor, constant: 20))
        constraints.append(yourStorage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(percent.topAnchor.constraint(equalTo: yourStorage.topAnchor, constant: 20))
        constraints.append(percent.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(totalMemory.topAnchor.constraint(equalTo: percent.topAnchor, constant: 20))
        constraints.append(yourStorage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(availableMemory.topAnchor.constraint(equalTo: totalMemory.topAnchor, constant: 10))
        constraints.append(availableMemory.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(trashSize.topAnchor.constraint(equalTo: availableMemory.topAnchor, constant: 10))
        constraints.append(trashSize.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }

}

