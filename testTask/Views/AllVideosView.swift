//
//  SecurityView.swift
//  testTask
//
//  Created by Клоун on 14.08.2022.
//

import UIKit

class AllVideosView: UIView {
    
    private let videosImage: UIImageView = {
        let videosImage = UIImageView()
        videosImage.image = UIImage(named: "videos")
        videosImage.translatesAutoresizingMaskIntoConstraints = false
        return videosImage
    }()
    
    private var allVideos: UILabel = {
        let allVideosLabel = UILabel()
        allVideosLabel.text = "ALL VIDEOS"
        allVideosLabel.textColor = #colorLiteral(red: 0.4022993147, green: 0.4323382378, blue: 0.7677036524, alpha: 1)
        allVideosLabel.numberOfLines = 2
        allVideosLabel.font = .systemFont(ofSize: 19)
        allVideosLabel.textAlignment = .center
        allVideosLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return allVideosLabel
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
        
        addSubview(videosImage)
        addSubview(allVideos)
        backgroundColor = .white
    }
    
    private func activateConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(videosImage.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        constraints.append(videosImage.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(allVideos.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20))
        constraints.append(allVideos.leftAnchor.constraint(equalTo: leftAnchor, constant: 20))
        constraints.append(allVideos.rightAnchor.constraint(equalTo: rightAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}

