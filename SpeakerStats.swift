//
//  SpeakerStats.swift
//  umAhLikeCounter
//
//  Created by Neota Moe on 7/29/17.
//  Copyright © 2017 Neota Moe. All rights reserved.
//

import Foundation

class SpeakerStats {
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
  private var _date: Date!
  
  var date: Date {
    return _date
  }
  
  var speaker: String {
    return _speaker
  }
  
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
  
}
