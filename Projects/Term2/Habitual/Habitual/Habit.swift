//
//  Habit.swift
//  Habitual
//
//  Created by luxury on 11/14/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import Foundation
import  UIKit

struct Habit: Codable {
    
    enum Images: Int, Codable , CaseIterable {
        case book
        case bulb
        case clock
        case code
        case drop
        case food
        case grow
        case gym
        case heart
        case lotus
        case other
        case pet
        case pill
        case search
        case sleep
        case tooth
        
        var image: UIImage {
            guard let image = UIImage(named: String(describing: self)) else {
                fatalError("Image \(self) not found")
            }
            return image
        }
        
        
    }
    
    var title: String
    let dateCreated: Date = Date()
    var selectedImage: Habit.Images
    
    var currentStreak: Int = 0
    var bestStreakLabel: Int = 0
    var lastCompletionDate: Date?
    var numberOfCompletions: Int = 0
    
    var hasCompletedForToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }
    
    init(title: String, image: Habit.Images) {
        self.title = title
        self.selectedImage = image
    }
    
}
