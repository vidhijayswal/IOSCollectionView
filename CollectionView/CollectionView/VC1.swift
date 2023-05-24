//
//  VC1.swift
//  CollectionView
//
//  Created by vidhi jayswal on 06/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    @IBOutlet weak var lblLabel: UILabel!
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var lblLabel1: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblLabel.text = movies[myIndex]
        
        myimage.image = UIImage(named: movies[myIndex])
        lblLabel1.text = moviesdesc[myIndex]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
