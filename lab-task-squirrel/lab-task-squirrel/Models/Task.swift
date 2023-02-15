//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
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
            Task(title: "Your favorite flowers",
                 description: "Pink and purple flowers found in the garden"),
            Task(title: "Your favorite waterfall",
                 description: "Waterfall surrounded by hills"),
            Task(title: "Your favorite hiking spot",
                 description: "If you ever want to just get out of the house and be with nature")
        ]
    }
}
