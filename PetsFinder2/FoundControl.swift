//
//  FoundControl.swift
//  PetsFinder2
//
//  Created by Xianlin Hu on 9/14/17.
//  Copyright © 2017 Xianlin Hu. All rights reserved.
//

import UIKit

class FoundControl: UIStackView {
    
    // MARK: Properties
    private var foundButton = UIButton()
    @IBInspectable var starSize: CGSize = CGSize(width: 3.0, height: 5.0) {
        didSet {
            setupButtons()
        }
    }

    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    func foundButtonTapped(button: UIButton) {
        button.isSelected = !button.isSelected;
    }
    
    // MARK: Private Methods
    private func setupButtons() {
        // clear any existing button
        removeArrangedSubview(foundButton)
        foundButton.removeFromSuperview()
        
        // load button images
        let bundle = Bundle(for: type(of: self))
        let found = UIImage(named: "foundImage", in: bundle, compatibleWith: self.traitCollection)
        let notFound = UIImage(named: "notFoundImage", in: bundle, compatibleWith: self.traitCollection)
        
        // set the button images
        foundButton.setImage(notFound, for: .normal)
        foundButton.setImage(found, for: .selected)

        
        // Add constraints
        foundButton.translatesAutoresizingMaskIntoConstraints = false
        foundButton.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
        foundButton.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
        
        // Set the accessibility label
        foundButton.accessibilityLabel = "Display whether it has been found or not"
        foundButton.accessibilityHint = foundButton.isSelected ? "The Pet has been found!" : "Sorry, the Pet is still not found."
        
        
        // Setup the button action
        foundButton.addTarget(self, action: #selector(FoundControl.foundButtonTapped(button:)), for: .touchUpInside)
        
        // add the button to the stack
        addArrangedSubview(foundButton)
    }
}
