//
//  SimpleEmptyDataSet.swift
//  SimpleEmptyDataSet
//
//  Created by Anirudha on 26/08/17.
//  Copyright © 2017 Anirudha Mahale. All rights reserved.
//

import UIKit

class SimpleEmptyDataSet: UIView {
    
    @IBOutlet var view: UIView!
    
    // Error View Components
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var errorImageView: UIImageView!
    @IBOutlet weak var errorTitleLabel: UILabel!
    @IBOutlet weak var errorDescriptionLabel: UILabel!
    
    @IBOutlet weak var errorDescriptionLabel_top_errorTitelLabel: NSLayoutConstraint!
    @IBOutlet weak var errorDescriptionLabel_top_errorImageView: NSLayoutConstraint!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // Performs the initial setup.
    fileprivate func setupView() {
        UINib(nibName: "SimpleEmptyDataSet", bundle: nil).instantiate(withOwner: self, options: nil)
        view.frame = self.bounds
        addSubview(view)
        errorView.alpha = 0
        self.alpha = 0
    }
    
    func showError(title: String?, message: String?, image: UIImage?) {
        if let title = title {
            errorTitleLabel.text = title
        } else {
            errorTitleLabel.text = nil
            errorDescriptionLabel_top_errorImageView.priority = 999
            errorDescriptionLabel_top_errorTitelLabel.priority = 1
        }
        
        if let message = message {
            errorDescriptionLabel.text = message
        } else {
            errorDescriptionLabel.text = nil
        }
        
        if let image = image {
            errorImageView.image = image
        } else {
            errorImageView.image = nil
        }
        
        errorView.alpha = 1
        self.alpha = 1
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
