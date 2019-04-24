//
//  discovery.swift
//  one tone
//
//  Created by Love on 22/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class discovery: UIViewController {
    @IBOutlet weak var genderButton: UIButton!
    @IBOutlet weak var location: UIButton!
    @IBOutlet weak var callImage: UIImageView!
    @IBOutlet weak var newPepole: UILabel!
    
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var tapTheCall: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        cancelButton.setTitle("CANCEL", for: .normal)
        cancelButton.setTitleColor(UIColor.white, for: .normal)
        cancelButton.titleLabel?.font = UIFont(name: "Gilroy-SemiBold", size: 15.0)
        cancelButton.layer.cornerRadius = self.cancelButton.frame.height / 2
        cancelButton.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initViews(){
        genderButton.clipsToBounds = true
        genderButton.layer.cornerRadius = self.genderButton.frame.height / 2
        if #available(iOS 11.0, *) {
            genderButton.layer.maskedCorners = [.layerMinXMinYCorner , .layerMinXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            genderButton.layer.maskedCorners = [.layerMinXMinYCorner , .layerMinXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
        location.clipsToBounds = true
        location.layer.cornerRadius = self.genderButton.frame.height / 2
        if #available(iOS 11.0, *) {
            location.layer.maskedCorners = [.layerMaxXMaxYCorner , .layerMaxXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            location.layer.maskedCorners = [.layerMaxXMaxYCorner , .layerMaxXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
        
        cancelButton.isHidden = true
        genderButton.isHidden = false
        location.isHidden = false
        callImage.layer.masksToBounds = true
        callImage.layer.cornerRadius = self.callImage.frame.height / 2
        callImage.layer.borderWidth = 6.0
        callImage.layer.borderColor = UIColor.white.cgColor
        
    }
    
    
    
    @IBAction func locationAction(_ sender: UIButton) {
        let vcCountry = self.storyboard?.instantiateViewController(withIdentifier: "country") as! country
        self.present(vcCountry, animated: true, completion: nil)
    }
    @IBAction func Gender(_ sender: UIButton) {
        let vcGender = self.storyboard?.instantiateViewController(withIdentifier: "gender") as! gender
        self.present(vcGender, animated: true, completion: nil)
     }
    @IBAction func callButton(_ sender: UIButton) {
        callImage.imageWithFade = #imageLiteral(resourceName: "lookings.png")
        tapTheCall.text = "I'm looking for a new one for "
        newPepole.text = "you, say hello to him!"
        cancelButton.isHidden = false
        genderButton.isHidden = true
        location.isHidden = true
        
//        callButton.setImage(#imageLiteral(resourceName: "aqw.png"), for: .normal)
//        tapTheCall.text = "I'm looking for a new one for "
//        newPepole.text = "you, say hello to him!"
//        cancelButton.isHidden = false
//        genderButton.isHidden = true
//        location.isHidden = true
//
        
    }
    @IBAction func cancel(_ sender: UIButton) {
        let vcIncomming = self.storyboard?.instantiateViewController(withIdentifier: "incommingCall") as! incommingCall
        self.present(vcIncomming, animated: true, completion: nil)
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
