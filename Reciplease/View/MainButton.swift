//
//  MainButton.swift
//  Reciplease
//
//  Created by Kyphun Lepeule on 27/10/2021.
//

import UIKit

class MainButton: UIButton {
    
    private let cornerRadius: CGFloat = 8
    private let fontSize: CGFloat = 20
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureButton()
    }
    
    private func configureButton() {
        layer.cornerRadius = cornerRadius
        titleLabel?.font = .systemFont(ofSize: fontSize, weight: .bold)
        setTitleColor(UIColor.white, for: .normal)
    }
    
}
