//
//  MascotViewController.swift
//  Three Amigos
//
//  Created by Gerald C. Hurdle on 2016-09-16.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

import UIKit

class MascotViewController: UIViewController {

    @IBOutlet weak var mascotImage: UIImageView!
    @IBOutlet weak var mascotName: UILabel!

    // array of Strings; name of array is: names
    var names: [String] = ["Android", "Duke", "Tux"]
    
    // names[0] is "Android"
    // names[1] is "Duke"
    // names[2] is "Tux"
    // names[3] is UNDEFINED
    
    // size of names array is: 3

    // array of UIImages; name of array is: images
    var images: [UIImage] = [
        UIImage(named: "android.png")!,
        UIImage(named: "duke.png")!,
        UIImage(named: "tux.png")!
    ]
    
    // index into images & names array
    // domain values: 0, 1, 2
    // (all other values are illegal)
    var index: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mascotName.text = names[index]
        mascotImage.image = images[index]
    }
    
    @IBAction func handleNext(_ sender: AnyObject) {
        index = index + 1
        if ( index >= names.count ) {
            index = 0
        }
        mascotName.text = names[index]
        mascotImage.image = images[index]
    }
    
    @IBAction func handlePrevious(_ sender: AnyObject) {
        index = index - 1
        if ( index < 0 ) {
            index = names.count - 1
        }
        
        mascotName.text = names[index]
        mascotImage.image = images[index]
    }
}
