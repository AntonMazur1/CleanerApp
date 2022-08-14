//
//  TestView.swift
//  testTask
//
//  Created by Клоун on 14.08.2022.
//

import UIKit

class TestView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init(labelText: String) {
        super.init(frame: .zero)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .black
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 21)
        lbl.text = "Hello"
        addSubview(lbl)
        
        NSLayoutConstraint.activate([
            lbl.centerXAnchor.constraint(equalTo: centerXAnchor),
            lbl.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
