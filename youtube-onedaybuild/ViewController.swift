//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Kevin Nyangena on 9/20/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view controller as the datasource and the delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        // Set the view controller as the delegate of the model
        model.delegate = self
        
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }
    
// MARK: - Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        
        // Set the returned videos to our videos property
        self.videos = videos
        
        // Refresh the tableView
        tableView.reloadData()
        
    }

// MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        
        // Configure the cell with the data
        
        let video = self.videos[indexPath.row]
        
        cell.setCell(video)
        // Return the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

