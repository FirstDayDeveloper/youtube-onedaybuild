//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Kevin Nyangena on 9/20/22.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

