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
//  var speakers = [Array<String>]()
  var speakers: [NSManagedObject] = []
  
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
  
  func getCurrentDate () -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    formatter.timeZone = TimeZone.current
    let stringDate: String = formatter.string(from: date)
    return stringDate
  }
  
  var stringDate = String()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor(red: 0.604, green: 0.984, blue: 1, alpha: 1) // #9afbff
    UIStepper.appearance().tintColor = UIColor(red: 0.204, green: 0.486, blue: 0.498, alpha: 1) // #347c7f
    self.saveBtn.backgroundColor = UIColor(red: 0.204, green: 0.486, blue: 0.498, alpha: 1) // #347c7f
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
    guard let newSpeaker = nameTextField.text else {
      return
    }
    let um = umLabel.text
    let ah = ahLabel.text
    let but = butLabel.text
    let so = soLabel.text
    let and = andLabel.text
    let like = likeLabel.text
    let youKnow = youKnowLabel.text
    let other = otherLabel.text
    self.save(name: newSpeaker, um: um!, ah: ah!, but: but!, so: so!, and: and!, like: like!, youKnow: youKnow!, other: other!)
    performSegue(withIdentifier: "toTable", sender: self)
  }

  func save(name: String, um: String, ah: String, but: String, so: String, and: String, like: String, youKnow: String, other: String) -> NSManagedObject {
  
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let managedContext = appDelegate.persistentContainer.viewContext
    let entity = NSEntityDescription.entity(forEntityName: "Speaker", in: managedContext)!
    let speaker = NSManagedObject(entity: entity, insertInto: managedContext)
    speaker.setValue(name, forKeyPath: "name")
    speaker.setValue(um, forKeyPath: "um")
    speaker.setValue(ah, forKeyPath: "ah")
    speaker.setValue(but, forKeyPath: "but")
    speaker.setValue(so, forKeyPath: "so")
    speaker.setValue(and, forKeyPath: "and")
    speaker.setValue(like, forKeyPath: "like")
    speaker.setValue(youKnow, forKeyPath: "youKnow")
    speaker.setValue(other, forKeyPath: "other")
    speaker.setValue(NSDate(), forKeyPath: "date")
    do {
      try managedContext.save()
      speakers.append(speaker)
      print("speaker added: \(speaker)")
    } catch let error as NSError {
      print("Could not save. \(error), \(error.userInfo)")
    }
    return speaker
  }

  
}



