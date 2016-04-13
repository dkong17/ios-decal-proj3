//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!
    /* Whether the user has liked */
    var liked : Bool
    /* Date posted */
    var date : String!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        username = (data.valueForKey("user") as! NSDictionary).valueForKey("username") as! String
        url = ((data.valueForKey("images") as! NSDictionary).valueForKey("standard_resolution") as! NSDictionary).valueForKey("url") as! String
        likes = (data.valueForKey("likes") as! NSDictionary).valueForKey("count") as! Int
        date = data.valueForKey("created_time") as! String
        liked = false
    }

}