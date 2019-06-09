//
//  ShowVC.swift
//  PixelCity
//
//  Created by Travis Bowen on 4/17/19.
//

import UIKit

class ShowVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = image
        addDoubleTap()
    }
    
    
    func initData(image: UIImage){
        self.image = image
    }
    
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }
}
