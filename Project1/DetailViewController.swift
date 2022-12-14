//
//  DetailViewController.swift
//  Project1
//
//  Created by ZuG on 9/20/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedIndex: Int!
    var imageCount: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture " + String(selectedIndex + 1) + " of " + String(imageCount)
        navigationItem.largeTitleDisplayMode = .never
        
        // Do any additional setup after loading the view.
        if let nameImg = selectedImage {
            imageView.image = UIImage(named: nameImg)
        }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
