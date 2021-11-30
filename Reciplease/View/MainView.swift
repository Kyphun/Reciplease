//
//  MainViex.swift
//  Reciplease
//
//  Created by Kyphun Lepeule on 28/10/2021.
//

import UIKit

class MainView: UIView {
    
    private var cornerRadius: CGFloat = 8
    private var borderWidth: CGFloat = 1
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func configure() {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
    }
}
