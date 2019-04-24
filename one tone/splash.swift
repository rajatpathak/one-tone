//
//  splash.swift
//  one tone
//
//  Created by Love on 21/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class splash: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "pageScreen") as! pageScreen
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            self.navigationController?.pushViewController(vc, animated: true)
        })
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
