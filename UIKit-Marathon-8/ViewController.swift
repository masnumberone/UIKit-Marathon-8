//
//  ViewController.swift
//  UIKit-Marathon-8
//
//  Created by work on 23.05.2023.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Avatar"
        view.backgroundColor = .systemBackground
        
        let scrollView = UIScrollView(frame: .init(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        scrollView.contentSize = .init(width: scrollView.frame.width, height: 1500)
        view.addSubview(scrollView)
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        imageView = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        imageView.frame = .init(x: (navigationController?.navigationBar.subviews[1].frame.width)! - 36 - 16,
                                y: -(navigationController?.navigationBar.subviews[1].frame.height)!,
                                width: 36,
                                height: 36)
        scrollView.addSubview(imageView)

        let additionalView = UIView(frame: .init(x: 0,
                                                 y: 0,
                                                 width: (navigationController?.navigationBar.subviews[1].frame.width)!,
                                                 height: 2 * (navigationController?.navigationBar.subviews[1].frame.height)!))
        
        additionalView.backgroundColor = .white
        view.addSubview(additionalView)
    }


}

