//
//  StartViewController.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 7/28/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var clickToStartBtn: UIButton!
  
  @IBOutlet weak var viewAllSpeakersBtn: UIButton!
  
  @IBAction func clickToStartBtnTapped(_ sender: Any) {
  }
  
  
    override func viewDidLoad() {
    
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.204, green: 0.486, blue: 0.498, alpha: 1) // #347c7f

      self.clickToStartBtn.backgroundColor = UIColor(red: 0.604, green: 0.984, blue: 1, alpha: 1) // #9afbff
      self.viewAllSpeakersBtn.backgroundColor = UIColor(red: 0.604, green: 0.984, blue: 1, alpha: 1) // #9afbff

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

  
  
  
  
  
}
