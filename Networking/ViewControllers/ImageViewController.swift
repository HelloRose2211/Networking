//
//  ImageViewController.swift
//  Networking
//
//  Created by Rose on 13.12.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        fetchImage()
    }
    
    private func fetchImage() {


    /*guard let url = URL(string: Link.imageURL.rawValue) else { return }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, let response = response else {
            print(error?.localizedDescription ?? "No error description")
            return
        }
        
        print(response)
        
        guard let image = UIImage(data: data) else { return }
        
        DispatchQueue.main.async {
            self.imageView.image = image
            self.activityIndicator.stopAnimating()
        }
    }.resume() // в этом месте уходим в фоновый поток до обьявления dispatch
}
     */
}
}
