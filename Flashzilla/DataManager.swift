//
//  DataManager.swift
//  Flashzilla
//
//  Created by Николай Никитин on 16.11.2022.
//

import Foundation

struct DataManager {
  static let savePath = FileManager.documatsDirectory.appendingPathComponent("SaveData")

  static func load() -> [Card] {
    if let data = try? Data(contentsOf: savePath) {
      if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
        return decoded
      }
    }
    return Card.exampleStack
  }

  static func save(_ cards: [Card]) {
    if let data = try? JSONEncoder().encode(cards) {
      try? data.write(to: savePath, options: [.atomic, .completeFileProtection])
    }
  }
}
