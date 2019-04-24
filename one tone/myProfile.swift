//
//  myProfile.swift
//  one tone
//
//  Created by Love on 25/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class myProfile: UIViewController {
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var connectToInstagram: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        personImage.layer.masksToBounds = true
        personImage.layer.cornerRadius = self.personImage.frame.height / 2
        personImage.layer.borderWidth = 6.0
        personImage.layer.borderColor = UIColor.white.cgColor
        
        connectToInstagram.layer.masksToBounds = true
        connectToInstagram.layer.cornerRadius = connectToInstagram.frame.height / 2
        connectToInstagram.layer.borderColor = UIColor(red: 75.0/255.0, green: 115.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        connectToInstagram.layer.borderWidth = 1.0
        
    }

   
    @IBAction func oneTone(_ sender: UIButton) {
        let vcCoin = self.storyboard?.instantiateViewController(withIdentifier: "tryFreePlusMembership") as! tryFreePlusMembership
        self.present(vcCoin, animated: true, completion: nil)
    }
    @IBAction func buycoin(_ sender: UIButton) {
        let vcCoin = self.storyboard?.instantiateViewController(withIdentifier: "BuyCredit") as! BuyCredit
        self.present(vcCoin, animated: true, completion: nil)
        
    }
}
