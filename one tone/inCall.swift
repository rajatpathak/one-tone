//
//  inCall.swift
//  one tone
//
//  Created by Love on 24/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class inCall: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func endCall(_ sender: UIButton) {
        let vcEnd = self.storyboard?.instantiateViewController(withIdentifier: "tabBar")
        self.present(vcEnd!, animated: true, completion: nil)
    }
    
    @IBAction func setting(_ sender: UIButton) {
        let vcSetting = self.storyboard?.instantiateViewController(withIdentifier: "setting") as! setting
        self.present(vcSetting, animated: true, completion: nil)
    }
    @IBAction func coin(_ sender: UIButton) {
        let vcCoin = self.storyboard?.instantiateViewController(withIdentifier: "BuyCredit") as! BuyCredit
        self.present(vcCoin, animated: true, completion: nil)
    }
}
