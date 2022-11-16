//
//  Card.swift
//  Flashzilla
//
//  Created by Николай Никитин on 10.11.2022.
//

import Foundation

struct Card: Codable, Identifiable, Hashable {
  var id = UUID()
    let prompt: String
    let answer: String

  static let example = Card(prompt: "How could you set up Live Rendering?", answer: "The attribute @IBDesignable lets Interface Builder perform live updates on a particular view. IBDesignable requires Init frame to be defined as well in UIView class.")

    static let exampleStack = [
      Card(prompt: "How could you set up Live Rendering?", answer: "The attribute @IBDesignable lets Interface Builder perform live updates on a particular view. IBDesignable requires Init frame to be defined as well in UIView class."),
      Card(prompt: " What is the difference between Synchronous & Asynchronous task?", answer: "Synchronous: waits until the task have completed Asynchronous: completes a task in the background and can notify you when complete"),
      Card(prompt: "Explain Compilation Conditions", answer: "Compilation Conditions to use if DEBUG … endif structure to include or disable given block of code ve separate targets."),
      Card(prompt: "What is made up of NSError object?", answer: "There are three parts of NSError object a domain, an error code, and a user info dictionary. The domain is a string that identifies what categories of errors this error is coming from"),
      Card(prompt: "What is Enum or Enumerations?", answer: "Enum is a type that basically contains a group of related values in the same umbrella but case-less enum won’t allow us to create an instance."),
      Card(prompt: "What is the bounding box?", answer: "The bounding box is a term used in geometry; it refers to the smallest measure (area or volume) within which a given set of points."),
      Card(prompt: "Why don’t we use strong for enum property in Objective-C?", answer: "Because enums aren’t objects, so we don’t specify strong or weak here."),
      Card(prompt: "What is @synthesize in Objective-C?", answer: "synthesize generates getter and setter methods for your property."),
      Card(prompt: "What is @dynamic in Objective-C?", answer: "We use dynamic for subclasses of NSManagedObject. @dynamic tells the compiler that getter and setters are implemented somewhere else."),
      Card(prompt: "Why do we use synchronized?", answer: "synchronized guarantees that only one thread can be executing that code in the block at any given time."),
      Card(prompt: "What is Dynamic Dispatch?", answer: "Dynamic Dispatch is the process of selecting which implementation of a polymorphic operation that’s a method or a function to call at run time."),
      Card(prompt: "What’s Code Coverage?", answer: "Code coverage is a metric that helps us to measure the value of our unit tests."),
      Card(prompt: "What is Regular expressions?", answer: "Regular expressions are special string patterns that describe how to search through a string."),
      Card(prompt: "What is Singleton Pattern ?", answer: "The Singleton design pattern ensures that only one instance exists for a given class and that there’s a global access point to that instance. It usually uses lazy loading to create the single instance when it’s needed the first time."),
      Card(prompt: "What is Responder Chain ?", answer: "A ResponderChain is a hierarchy of objects that have the opportunity to respond to events received."),
      ]
}
