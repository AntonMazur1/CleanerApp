//
//  BannerView.swift
//  testTask
//
//  Created by Клоун on 13.08.2022.
//

import UIKit

class BannerView: UIView {

    var background = UIView()
    var title = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    convenience init() {
        self.init(frame: CGRect.zero)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubviews()
    }

    func setupSubviews() {
        background.backgroundColor = .gray
        title.text = "INHEART"

        self.addSubview(background)
        self.addSubview(title)
    }

    override func layoutSubviews() {
        
        background.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        background.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        background.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        background.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        
        title.widthAnchor.constraint(equalToConstant: 100).isActive = true
        title.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}
