//
//  PhotosCollectionViewController.swift
//  PhotoCollection
//
//  Created by Ryo Makabe on 2016-08-11.
//  Copyright © 2016 ryomakabe. All rights reserved.
//

import UIKit

private let reuseIdentifier = "testCell"

class PhotosCollectionViewController: UICollectionViewController {

	// MARK: properties
	var photos = [Photo]()
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        loadImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func loadImage() {
		let photo1 = Photo(photo: UIImage(named: "photo1")!)
		let photo2 = Photo(photo: UIImage(named: "photo2")!)
		let photo3 = Photo(photo: UIImage(named: "photo3")!)
		let photo4 = Photo(photo: UIImage(named: "photo4")!)
		let photo5 = Photo(photo: UIImage(named: "photo5")!)
		let photo6 = Photo(photo: UIImage(named: "photo6")!)
		let photo7 = Photo(photo: UIImage(named: "photo7")!)
		let photo8 = Photo(photo: UIImage(named: "photo8")!)
		let photo9 = Photo(photo: UIImage(named: "photo9")!)
		let photo10 = Photo(photo: UIImage(named: "photo10")!)
		let photo11 = Photo(photo: UIImage(named: "photo11")!)
		let photo12 = Photo(photo: UIImage(named: "photo12")!)
		
		photos += [photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10, photo11, photo12]
		
	}

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "ShowDetail" {
			let detailVC = segue.destinationViewController as! PhotoDetailViewController
			if let selectedCell = sender as? PhotoCollectionViewCell {
				let indexPath = collectionView!.indexPathForCell(selectedCell)!
				let selectedPhoto = photos[indexPath.row]
				detailVC.photo = selectedPhoto
			}
		}
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PhotoCollectionViewCell
		let photo = photos[indexPath.row]
		
		cell.cellImage.image = photo.photo
		
        return cell
    }
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
		let width: CGFloat = view.frame.width / 3 - 2
		let height: CGFloat = width
		return CGSize(width: width, height: height)
	}

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
