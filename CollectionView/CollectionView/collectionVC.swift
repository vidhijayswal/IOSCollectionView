//
//  collectionVC.swift
//  CollectionView
//
//  Created by vidhi jayswal on 06/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

var movies = ["Simba","Zero","KGF","Luka Chhupi","Gully Boy","URI: The Surgical Strike","2.0","Kedarnath","Loveyatri","Namste England","Simba","Zero","KGF","Luka Chhupi","Gully Boy","URI: The Surgical Strike","2.0","Kedarnath","Loveyatri","Namste England"]


var moviesdesc = ["Actor:Ranvir Sinh      Actress:Sara Ali Khan","Actor:Shahrukh Khan   Actress:Anushka Sharma","Actor:Ayyappa P Sharma  Actress:Srinidhi Shetty","Actor:Kartik Aaryan   Actress:Kriti Sanon","Actor:Ranvir Sinh   Actress:Aalia Bhatt","Actor:Vicky Kaushal   Actress:Yami Gautam","Actor:Rajnikanth   Actress:Ammy Jackson","Actor:Sushant Singh Rajput   Actress:Sara Ali Khan","Actor:Aayush Sharma   Actress:Zarina Wahab","Actor:Arjun Kapoor   Actress:Parineeti Chopra","Actor:Ranvir Sinh   Actress:Sara Ali Khan","Actor:Shahrukh Khan   Actress:Anushka Sharma","Actor:Ayyappa P Sharma  Actress:Srinidhi Shetty","Actor:Kartik Aaryan   Actress:Kriti Sanon","Actor:Ranvir Sinh   Actress:Aalia Bhatt","Actor:Vicky Kaushal   Actress:Yami Gautam","Actor:Rajnikanth   Actress:Ammy Jackson","Actor:Sushant Singh Rajput   Actress:Sara Ali Khan","Actor:Aayush Sharma   Actress:Zarina Wahab","Actor:Arjun Kapoor   Actress:Parineeti Chopra"]

var myIndex = 0

class collectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    
    }

    //return the number of views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return movies.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageview.image = UIImage(named: movies[indexPath.row])
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }


}
