//
//  SpeakerViewController.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 8/10/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit
import CoreData

class SpeakerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  let speakerStats = SpeakerStats()
  var newSpeaker = [String]()
  var speakers: [NSManagedObject] = []
  var sectionDates = [String]()
  let tableView = UITableView()

  func checkDate() -> Array<String>{
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    let stringDate: String = formatter.string(from: date)
    if (sectionDates.count == 0) {
      sectionDates.append(stringDate)
      print("stringDate: \(stringDate)")
      print("sectionDates.count: \(sectionDates.count)")
      return sectionDates
    } else if (sectionDates.count > 0 && sectionDates[sectionDates.count-1] != stringDate) {
      sectionDates.append(stringDate)
      return sectionDates
    }
    return sectionDates
  }
  
  override func viewDidLoad() {
      super.viewDidLoad()
      print("speakers on viewDidLoad in SVC: \(speakers)")
      tableView.rowHeight = 150
      checkDate()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let managedContext = appDelegate.persistentContainer.viewContext
    
    let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Speaker")
    
    do {
      speakers = try managedContext.fetch(fetchRequest)
    } catch let error as NSError {
      print("Could not fetch. \(error) \(error.userInfo)")
    }
    
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let viewController = segue.destination as? ViewController {
      print("speakers in prepare for segue: \(speakers)")
      viewController.speakers = speakers
    }
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   func numberOfSections(in tableView: UITableView) -> Int {
    return sectionDates.count
  }

  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    let stringDate: String = formatter.string(from: date)
    return "Speakers for \(stringDate)"
  }
  
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    let header = view as! UITableViewHeaderFooterView
    header.textLabel!.textColor = UIColor.purple
    header.contentView.backgroundColor = UIColor.lightGray
  }

  
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return speakers.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomSpeakerTableViewCell
    let speaker = speakers[indexPath.row]
    if(indexPath.row % 2 == 0){
      cell.backgroundColor = UIColor.red
    } else {
      cell.backgroundColor = UIColor.white
    }
    cell.nameLabel.text = speaker.value(forKeyPath: "name") as? String
    cell.umLabel.text = speaker.value(forKeyPath: "um") as? String
    cell.ahLabel.text = speaker.value(forKeyPath: "ah") as? String
    cell.butLabel.text = speaker.value(forKeyPath: "but") as? String
    cell.soLabel.text = speaker.value(forKeyPath: "so") as? String
    cell.likeLabel.text = speaker.value(forKeyPath: "and") as? String
    cell.andLabel.text = speaker.value(forKeyPath: "like") as? String
    cell.youKnowLabel.text = speaker.value(forKeyPath: "youKnow") as? String
    cell.otherLabel.text = speaker.value(forKeyPath: "other") as? String
    return cell
  }


}
