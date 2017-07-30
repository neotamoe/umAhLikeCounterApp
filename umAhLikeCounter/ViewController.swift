//
//  ViewController.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 7/25/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
  
  let speakerStats = SpeakerStats()
  
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var saveBtn: UIButton!

  @IBOutlet var countLabels: [UILabel]!
  
  @IBOutlet weak var umLabel: UILabel!
  @IBOutlet weak var ahLabel: UILabel!
  @IBOutlet weak var butLabel: UILabel!
  @IBOutlet weak var soLabel: UILabel!
  @IBOutlet weak var likeLabel: UILabel!
  @IBOutlet weak var andLabel: UILabel!
  @IBOutlet weak var youKnowLabel: UILabel!
  @IBOutlet weak var otherLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func umStepper(_ sender: UIStepper) {
    umLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func ahStepper(_ sender: UIStepper) {
    ahLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func butStepper(_ sender: UIStepper) {
    butLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func soStepper(_ sender: UIStepper) {
    soLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func likeStepper(_ sender: UIStepper) {
    likeLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func andStepper(_ sender: UIStepper) {
    andLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func youKnowStepper(_ sender: UIStepper) {
    youKnowLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func otherStepper(_ sender: UIStepper) {
    otherLabel.text = "\(Int(sender.value))"
  }
  
  @IBAction func saveBtnTapped(_ sender: UIButton) {
    print("\(countLabels)")
    print("name text field:  \(nameTextField)")
    guard let newSpeaker = nameTextField.text else {
      return
    }
    speakerStats.add(newSpeaker)
  }

}



