//
//  ViewController.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 7/25/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var umLabel: UILabel!
  @IBOutlet weak var umIncreaseBtn: UIButton!
  @IBOutlet weak var umDecreaseBtn: UIButton!
  var umStart = 0
  
  @IBOutlet weak var ahLabel: UILabel!
  @IBOutlet weak var ahIncreaseBtn: UIButton!
  @IBOutlet weak var ahDecreaseBtn: UIButton!
  var ahStart = 0
  
  @IBOutlet weak var butLabel: UILabel!
  @IBOutlet weak var butIncreaseBtn: UIButton!
  @IBOutlet weak var butDecreaseBtn: UIButton!
  var butStart = 0
  
  @IBOutlet weak var soLabel: UILabel!
  @IBOutlet weak var soIncreaseBtn: UIButton!
  @IBOutlet weak var soDecreaseBtn: UIButton!
  var soStart = 0
  
  @IBOutlet weak var likeLabel: UILabel!
  @IBOutlet weak var likeIncreaseBtn: UIButton!
  @IBOutlet weak var likeDecreaseBtn: UIButton!
  var likeStart = 0
  
  
  @IBOutlet weak var andLabel: UILabel!
  @IBOutlet weak var andIncreaseBtn: UIButton!
  @IBOutlet weak var andDecreaseBtn: UIButton!
  var andStart = 0
  
  @IBOutlet weak var youKnowLabel: UILabel!
  @IBOutlet weak var youKnowIncreaseBtn: UIButton!
  @IBOutlet weak var youKnowDecreaseBtn: UIButton!
  var youKnowStart = 0
  
  
  @IBOutlet weak var otherLabel: UILabel!
  @IBOutlet weak var otherIncreaseBtn: UIButton!
  @IBOutlet weak var otherDecreaseBtn: UIButton!
  var otherStart = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func umIncreaseBtnTapped(_ sender: Any) {
    umStart += 1
    umLabel.text = "\(umStart)"
  }
  @IBAction func umDecreaseBtnTapped(_ sender: Any) {
    if umStart == 0 {
      umLabel.text = "0"
    } else {
      umStart -= 1
      umLabel.text = "\(umStart)"
    }
  }
  
  @IBAction func ahIncreaseBtnTapped(_ sender: Any) {
    ahStart += 1
    ahLabel.text = "\(ahStart)"
  }
  
  @IBAction func ahDecreaseBtnTapped(_ sender: Any) {
    if ahStart == 0 {
      ahLabel.text = "0"
    } else {
      ahStart -= 1
      ahLabel.text = "\(ahStart)"
    }
  }
  
  @IBAction func butIncreaseBtnTapped(_ sender: Any) {
    butStart += 1
    butLabel.text = "\(butStart)"
  }
  @IBAction func butDecreaseBtnTapped(_ sender: Any) {
    if butStart == 0 {
      butLabel.text = "0"
    } else {
      butStart -= 1
      butLabel.text = "\(butStart)"
    }
  }
  
  @IBAction func soIncreaseBtnTapped(_ sender: Any) {
    soStart += 1
    soLabel.text = "\(soStart)"
  }
  @IBAction func soDecreaseBtnTapped(_ sender: Any) {
    if soStart == 0 {
      soLabel.text = "\(soStart)"
    } else {
      soStart -= 1
      soLabel.text = "\(soStart)"
    }
  }
  
  @IBAction func likeIncreaseBtnTapped(_ sender: Any) {
    likeStart += 1
    likeLabel.text = "\(likeStart)"
  }
  @IBAction func likeDecreaseBtnTapped(_ sender: Any) {
    if likeStart == 0 {
      likeLabel.text = "0"
    } else {
      likeStart -= 1
      likeLabel.text = "\(likeStart)"
    }
  }
  
  @IBAction func andIncreaseBtnTapped(_ sender: Any) {
    andStart += 1
    andLabel.text = "\(andStart)"
  }
  @IBAction func andDecreaseBtnTapped(_ sender: Any) {
    if andStart == 0 {
      andLabel.text = "0"
    } else {
      andStart -= 1
      andLabel.text = "\(andStart)"
    }
  }
  
  @IBAction func youKnowIncreaseBtnTapped(_ sender: Any) {
    youKnowStart += 1
    youKnowLabel.text = "\(youKnowStart)"
  }
  @IBAction func youKnowDecreaseBtnTapped(_ sender: Any) {
    if youKnowStart == 0 {
      youKnowLabel.text = "0"
    } else {
      youKnowStart -= 1
      youKnowLabel.text = "\(youKnowStart)"
    }
  }
  
  @IBAction func otherIncreaseBtnTapped(_ sender: Any) {
    otherStart += 1
    otherLabel.text = "\(otherStart)"
  }
  @IBAction func otherDecreaseBtnTapped(_ sender: Any) {
    if otherStart == 0 {
      otherLabel.text = "0"
    } else {
      otherStart -= 1
      otherLabel.text = "\(otherStart)"
    }
  }
  
  
  
  
}

