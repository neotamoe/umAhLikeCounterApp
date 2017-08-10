//
//  SpeakerStats.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 7/29/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import Foundation

class SpeakerStats {
//  private var _speakerTotals = [String:String]()
  var speakers = [String]()
  private var _speaker: String!
  private var _umCount: String!
  private var _ahCount: String!
  private var _butCount: String!
  private var _soCount: String!
  private var _andCount: String!
  private var _likeCount: String!
  private var _youKnowCount: String!
  private var _otherCount: String!

  
  
//  var speakerTotals: [String: String] {
//    return [speaker: _speaker, umCount: _umCount, ahCount: _ahCount, butCount: _butCount, soCount: _soCount, likeCount: _likeCount, andCount: _andCount, youKnowCount: _youKnowCount, otherCount: _otherCount]
//  }

  var speaker: String {
    return _speaker
  }
  
//  var speakers: Array<String> {
//    return _speakers
//  }
  
  var umCount: String {
    return _umCount
  }
  
  var ahCount: String {
    return _ahCount
  }

  var butCount: String {
    return _butCount
  }

  var soCount: String {
    return _soCount
  }

  var likeCount: String {
    return _likeCount
  }

  var andCount: String {
    return _andCount
  }

  var youKnowCount: String {
    return _youKnowCount
  }

  var otherCount: String {
    return _otherCount
  }
  
  func add(_ speaker: String) {
    speakers.append(speaker)
    print("speakers: \(speakers)")
  }
  
//  init(<#parameters#>) {
//    <#statements#>
//  }
}

//extension SpeakerStats: UITableViewDataSource {
//  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return speakers.count
//  }
//  
//  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//    
//    let newSpeaker = speakers[indexPath.row]
//    
//    cell.textLabel!.text = newSpeaker
//    
//    return cell
//  }
//}
