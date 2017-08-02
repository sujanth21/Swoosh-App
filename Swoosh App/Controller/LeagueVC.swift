//
//  LeagueVC.swift
//  Swoosh App
//
//  Created by Sujanth Sebamalaithasan on 29/7/17.
//  Copyright © 2017 Sujanth. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func menBtnTapped(_ sender: Any) {
        selectedLeague(leagueType: "men")
    }
    
    @IBAction func womenBtnTapped(_ sender: Any) {
        selectedLeague(leagueType: "women")
    }
    
    @IBAction func coedBtnTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
