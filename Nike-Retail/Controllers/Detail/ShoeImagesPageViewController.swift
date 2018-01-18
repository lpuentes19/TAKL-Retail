//
//  ShoeImagesPageViewController.swift
//  Nike-Retail
//
//  Created by Luis Puentes on 1/17/18.
//  Copyright © 2018 LuisPuentes. All rights reserved.
//

import UIKit

class ShoeImagesPageViewController: UIPageViewController {

    // MARK: - Properties
    var images: [UIImage]?
    
    lazy var controllers: [UIViewController] = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controllers = [UIViewController]()
        
        if let images = self.images {
            for image in images {
                let shoeImageVC = storyboard.instantiateViewController(withIdentifier: "shoeImagesViewController")
                controllers.append(shoeImageVC)
            }
        }
        
        return controllers
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}