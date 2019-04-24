//
//  setting.swift
//  one tone
//
//  Created by Love on 25/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class setting: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func done(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func coin(_ sender: UIButton) {
        let vcCoin = self.storyboard?.instantiateViewController(withIdentifier: "tryFreePlusMembership") as! tryFreePlusMembership
        self.present(vcCoin, animated: true, completion: nil)
    }
    @IBAction func coins(_ sender: UIButton) {
        
            let vcCoin = self.storyboard?.instantiateViewController(withIdentifier: "BuyCredit") as! BuyCredit
            self.present(vcCoin, animated: true, completion: nil)
        
    }
}
