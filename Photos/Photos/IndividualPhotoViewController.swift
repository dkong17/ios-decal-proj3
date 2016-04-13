//
//  IndividualPhotoViewController.swift
//  Photos
//
//  Created by David Kong on 4/12/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class IndividualPhotoViewController: UIViewController {
    
    @IBOutlet weak var pImageView: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var photoImage : UIImage = UIImage()
    var photoObject : Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pImageView.image = photoImage
        pImageView.contentMode = UIViewContentMode.ScaleAspectFit
        likeCount.text = String(photoObject.likes!)
        username.text = photoObject.username
        date.text = photoObject.date
        if photoObject.liked {
            likeButton.backgroundColor = UIColor.greenColor()
        }
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: "back")
    }
    
    func back(){
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func likeButtonTouch(sender: UIButton!) {
        if (!photoObject.liked) {
            likeButton.backgroundColor = UIColor.greenColor()
        }
        else {
            likeButton.backgroundColor = nil
        }
        photoObject.liked = !photoObject.liked
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
