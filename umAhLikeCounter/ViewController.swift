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
  var speakers = [Array<String>]()
  
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
    print("speakers on viewDidLoad in VC: \(speakers)")
    
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
  
  var newSpeaker = [String]()

  @IBAction func saveBtnTapped(_ sender: UIButton) {
//    guard let newSpeaker = nameTextField.text else {
//      return
//    }

    performSegue(withIdentifier: "toTable", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let speakerViewController = segue.destination as? SpeakerViewController {
      let um = umLabel.text
      let ah = ahLabel.text
      let but = butLabel.text
      let so = soLabel.text
      let and = andLabel.text
      let like = likeLabel.text
      let youKnow = youKnowLabel.text
      let other = otherLabel.text
      let newSpeakerName = nameTextField.text
      newSpeaker.append(newSpeakerName!)
      newSpeaker.append("Um: \(um!)")
      newSpeaker.append("Ah: \(ah!)")
      newSpeaker.append("But: \(but!)")
      newSpeaker.append("So: \(so!)")
      newSpeaker.append("Like: \(like!)")
      newSpeaker.append("And: \(and!)")
      newSpeaker.append("YouKnow: \(youKnow!)")
      newSpeaker.append("Other: \(other!)")
      print("newSpeaker in VC: \(newSpeaker)")
      speakers.append(newSpeaker)
//     speakerViewController.newSpeaker = newSpeaker
      speakerViewController.speakers = speakers
    }
  }
  
}



