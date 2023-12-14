//
//  ViewController.swift
//  TableView homework
//
//  Created by Serper Kurmanbek on 14.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var imageview2: UIImageView!
    
    //    var name = ""
//    var descript = ""
//    var imagename = "
  var places = Places()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelName.text = places.name
        labelDescription.text = places.description
        imageview.image = UIImage(named: places.imageName3)
        imageview2.image = UIImage(named: places.imageName2)
       
    }


}

