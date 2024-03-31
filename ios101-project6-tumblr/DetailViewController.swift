//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Riley Dou on 3/31/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var photoImageView: UIImageView!
    
    var post : Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup
                
        captionTextView.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: photoImageView)
        }
    }

}
