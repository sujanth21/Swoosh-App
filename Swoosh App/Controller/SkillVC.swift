//
//  SkillVC.swift
//  Swoosh App
//
//  Created by Sujanth Sebamalaithasan on 29/7/17.
//  Copyright © 2017 Sujanth. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(player.desiredLeague)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
