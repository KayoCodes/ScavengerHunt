//
//  Task.swift
//  Scavenger Hunt
//
//  Created by keenan ray on 3/19/23.
//

import Foundation
import CoreLocation
import UIKit

class Task{
    let name: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(name:  "Favorite Place To Eat",
                 description: "Favorite Restaurant?"),
            Task(name: "Favorite Hiking Spot",
                 description: "Whats Your Favorite Place To Hike?"),
            Task(name: "Your Favorite Arcade",
                 description: "Whats Your Favorite Place To Play Games?")
        ]
    }
}
