//
//  ViewController.swift
//  SimpleEmptyDataSet
//
//  Created by Anirudha on 26/08/17.
//  Copyright © 2017 Anirudha Mahale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var emptyDataSet: SimpleEmptyDataSet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emptyDataSet = SimpleEmptyDataSet(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        view.addSubview(emptyDataSet)
        
        emptyDataSet.showError(title: "Instagram Posts", message: nil, image: #imageLiteral(resourceName: "ErrorMessage"))
    }
    
}

