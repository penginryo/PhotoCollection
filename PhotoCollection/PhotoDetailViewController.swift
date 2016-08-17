//
//  PhotoDetailViewController.swift
//  PhotoCollection
//
//  Created by Ryo Makabe on 2016-08-15.
//  Copyright © 2016 ryomakabe. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
	
	// MARK: properties
	@IBOutlet weak var photoImageView: UIImageView!
	
	var photo: Photo?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let photo = photo {
			navigationItem.title = "Photo"
			photoImageView.image = photo.photo
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
