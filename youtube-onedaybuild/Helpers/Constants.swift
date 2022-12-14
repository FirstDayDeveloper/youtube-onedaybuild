//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Kevin Nyangena on 9/20/22.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAtJXhqzPZvbfU_2TAMZWY0mcHhOTh5cj0"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
    static var YT_EMBED_URL = "https://www.youtube.com/embed"
}
