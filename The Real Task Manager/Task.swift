//
//  Task.swift
//  The Real Task Manager
//
//  Created by Sawyer Cherry on 9/12/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation


class Task {
    // this will store the title of the task
    var title: String
    var completed: Bool
    
    init(title: String, completed: Bool) {
        self.title = title
        self.completed = completed
    }
}


