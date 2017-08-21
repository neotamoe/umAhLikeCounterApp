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
  var stringDate = String()
  
  func getCurrentDateString() -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    formatter.timeZone = TimeZone.current
    let stringDate: String = formatter.string(from: date)
    return stringDate
  }
  
  func checkDate() -> Array<String>{
    if (sectionDates.count == 0) {
      sectionDates.append(stringDate)
      print("stringDate: \(stringDate)")
      print("sectionDates.count: \(sectionDates.count)")
      return sectionDates
    } else if (sectionDates.count > 0 && sectionDates[sectionDates.count-1] != stringDate) {
      sectionDates.append(stringDate)
      print("stringDate: \(stringDate)")
      print("sectionDates.count: \(sectionDates.count)")
      return sectionDates
    }
    return sectionDates
  }
  
  
  override func viewDidLoad() {
      super.viewDidLoad()
      print("speakers on viewDidLoad in SVC: \(speakers)")
      tableView.rowHeight = 150
      getCurrentDateString()
      checkDate()
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let managedContext = appDelegate.persistentContainer.viewContext
    
    let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Speaker")
    fetchRequest.sortDescriptors = [NSSortDescriptor(key: "date", ascending: true, selector: #selector(NSDate.compare(_:)))]
    do {
      speakers = try managedContext.fetch(fetchRequest)
      // this isn't quite working...need to figure out cast type
//      if let stats = speakers as? [Speaker] {
//        stats.forEach { stat in
//          print(stat.speaker)
//          print(stat.date)
//        }
//      }
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
    return "Speakers for <insert date here>"
  }
  
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    let header = view as! UITableViewHeaderFooterView
    header.textLabel!.textColor = UIColor.purple
    header.contentView.backgroundColor = UIColor.lightGray
  }
  
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return speakers.count
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print ("You tapped cell number \(indexPath.row)")
  }


  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
    let speakerEntity = "Speaker" //Entity Name
    
    let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let speaker = speakers[indexPath.row]
    
    if editingStyle == .delete {
      managedContext.delete(speaker)
      
      do {
        try managedContext.save()
      } catch let error as NSError {
        print("Error While Deleting Note: \(error.userInfo)")
      }
      
    }
    
    //Code to Fetch New Data From The DB and Reload Table.
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: speakerEntity)
    
    do {
      speakers = try managedContext.fetch(fetchRequest) as! [SpeakerMO]
    } catch let error as NSError {
      print("Error While Fetching Data From DB: \(error.userInfo)")
    }
    tableView.reloadData()
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomSpeakerTableViewCell
    let speaker = speakers[indexPath.row]
//    if(indexPath.row % 2 == 0){
//      cell.backgroundColor = UIColor.white
//    } else {
//      cell.backgroundColor = UIColor.lightGray
//    }
    cell.nameLabel.text = speaker.value(forKeyPath: "name") as? String
    cell.umLabel.text = "Um: \(String(describing: speaker.value(forKeyPath: "um") as! String))"
    cell.ahLabel.text = "Ah: \(String(describing: speaker.value(forKeyPath: "ah") as! String))"
    cell.butLabel.text = "But: \(String(describing: speaker.value(forKeyPath: "but") as! String))"
    cell.soLabel.text = "So: \(String(describing: speaker.value(forKeyPath: "so") as! String))"
    cell.likeLabel.text = "And: \(String(describing: speaker.value(forKeyPath: "and") as! String))"
    cell.andLabel.text = "Like: \(String(describing: speaker.value(forKeyPath: "like") as! String))"
    cell.youKnowLabel.text = "You Know: \(String(describing: speaker.value(forKeyPath: "youKnow") as! String))"
    cell.otherLabel.text = "Other: \(String(describing: speaker.value(forKeyPath: "other") as! String))"
    return cell
  }


}
