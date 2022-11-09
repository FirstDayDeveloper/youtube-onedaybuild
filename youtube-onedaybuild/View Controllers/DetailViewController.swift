//
//  DetailViewController.swift
//  youtube-onedaybuild
//
//  Created by Kevin Nyangena on 11/8/22.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var video:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Clear the fields from the previous video we were looking at
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        // Check if there is a video
        guard video != nil else {
            return
        }
        
        // Create the embed URL
        
        // Load it into the webview
        
        // Set the title
        
        // Set the date
        
        // Set the description
        
    
    }
}
