//
//  SpeakerViewController.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 8/10/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class SpeakerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  let speakerStats = SpeakerStats()
  var newSpeaker = [String]()
  var speakers = [Array<String>]()
  var sectionDates = [String]()

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
//      if newSpeaker[0] != "" {
//        speakers.append(newSpeaker)
//        print("speakers after append: \(speakers)")
//      }
    checkDate()
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
  
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return speakers.count
  }
  
  
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
    cell.textLabel?.text = "Name: \(speakers[indexPath.row][0]), Um: \(speakers[indexPath.row][1]), Ah: \(speakers[indexPath.row][2]), But: \(speakers[indexPath.row][3]), So: \(speakers[indexPath.row][4]), Like: \(speakers[indexPath.row][5]), And: \(speakers[indexPath.row][6]), YouKnow: \(speakers[indexPath.row][7]), Other: \(speakers[indexPath.row][8])"
//    cell.detailTextLabel?.text =
    
    return cell
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
