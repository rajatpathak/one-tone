//
//  incommingCall.swift
//  one tone
//
//  Created by Love on 23/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class incommingCall: UIViewController {
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var rejected: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personImage.layer.masksToBounds = true
        personImage.layer.cornerRadius = self.personImage.frame.height / 2
        personImage.layer.borderWidth = 6.0
        personImage.layer.borderColor = UIColor.white.cgColor
        
        rejected.layer.masksToBounds = true
        rejected.layer.cornerRadius = rejected.frame.height / 2


    }

    @IBAction func rejected(_ sender: UIButton) {
        let vcInCall = self.storyboard?.instantiateViewController(withIdentifier: "inCall") as! inCall
        self.present(vcInCall, animated: true, completion: nil)
    }
    
    @IBAction func settings(_ sender: UIButton) {
        let vcSetting = self.storyboard?.instantiateViewController(withIdentifier: "setting") as! setting
        self.present(vcSetting, animated: true, completion: nil)
    }
    @IBAction func coin(_ sender: UIButton) {
        let vcCoin = self.storyboard?.instantiateViewController(withIdentifier: "BuyCredit") as! BuyCredit
        self.present(vcCoin, animated: true, completion: nil)
    }
}
