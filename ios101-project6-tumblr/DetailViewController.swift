//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Kevin Lam on 10/23/23.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {
    var post: Post!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set caption text
        textView.text = post.caption.trimHTMLTags()
        
        // Load image using Nuke
        if let firstPhotoURL = post.photos.first?.originalSize.url {
            Nuke.loadImage(with: firstPhotoURL, into: imageView)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
