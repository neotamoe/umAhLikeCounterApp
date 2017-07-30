//
//  SpeakerStats.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 7/29/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import UIKit

class SpeakerStats: NSObject {
  fileprivate var speakers: [String] = []
  func add(_ speaker: String) {
    speakers.append(speaker)
  }
}

extension SpeakerStats: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return speakers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
    let newSpeaker = speakers[indexPath.row]
    
    cell.textLabel!.text = newSpeaker
    
    return cell
  }
}
