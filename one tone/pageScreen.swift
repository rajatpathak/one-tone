//
//  pageScreen.swift
//  one tone
//
//  Created by Love on 21/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit
let tabBarStoryboard = UIStoryboard(name: "TabBar",bundle: nil)
class pageScreen: UIViewController {
   
    @IBOutlet weak var connectWithFacebook: UIButton!
    @IBOutlet weak var termsOfService: UILabel!
    
    var myString:NSString = "By continuing you will agree to the Terms of Service and"
    var myMutableString = NSMutableAttributedString()
    
    override func viewDidLoad() {
        
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedStringKey.font:UIFont(name: "Helvetica Neue", size: 12.0)!])
        myMutableString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.darkGray, range: NSRange(location:36,length:16))
        termsOfService.attributedText = myMutableString
        
        super.viewDidLoad()

        self.connectWithFacebook.layer.masksToBounds = true
        self.connectWithFacebook.layer.cornerRadius = self.connectWithFacebook.frame.height / 2
        self.connectWithFacebook.setBackgroundImage(#imageLiteral(resourceName: "linear-blue-gradient-purple-1200x1920-c2-483d8b-000080-a-0-f-14.png"), for: .normal)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func connectWithFb(_ sender: UIButton) {
        let mainVc = tabBarStoryboard.instantiateViewController(withIdentifier: "tabBar")
        self.present(mainVc, animated: true, completion: nil)
    }
}


