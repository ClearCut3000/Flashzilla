//
//  FileManager + Extension.swift
//  Flashzilla
//
//  Created by Николай Никитин on 16.11.2022.
//

import Foundation

extension FileManager {
  static var documatsDirectory: URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
  }
}
