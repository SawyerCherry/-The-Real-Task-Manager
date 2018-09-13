//
//  Menu.swift
//  The Real Task Manager
//
//  Created by Sawyer Cherry on 9/12/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation

class Menu {
  
    var shouldQuit = false
    
    let library = Library()
    func help() {
        print("""
        1. Add A Task
        2. Remove A Task
        3. List Tasks
        4. Check Completed
        5. Check Incompleted
        6. See Completed Tasks
        7. See Incompleted Tasks
        8. Help
        9. Quit

        """)
    }
    
    
    func go() {
        help()
        repeat {
            var input = getInput()
            while validateInput(input) == false {
                print("Invalid Input")
                input = getInput()
            }
            handleInput(input)
        } while !shouldQuit
        
        var input = getInput()
        
        while validateInput(input) == false {
            print("Invalid Input")
            input = getInput()
        }
        
    }
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
        library.addTask()
            help()
        case "2":
        library.removeTask()
            help()
        case "3":
        library.listTask()
            help()
        case "4":
        library.taskComplete()
            help()
        case "5":
        library.taskIncomplete()
            help()
        case "6":
            help()
        case "7":
            shouldQuit = true
            help()
        default:
            break
        }
    }
    func validateInput(_ input: String) -> Bool {
        let menuOptions = Array(1...7)
        
        guard let number = Int(input) else { return false }
        
        return menuOptions.contains(number)
    }
    
    func getInput() -> String {
        var input: String? = nil
        
        repeat {
            
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            if line != "" {
                input = line
            } else {
                 print("Can I have 10 minutes of your time to discuss with you the church of the flying spaghetti monster?")
            }
        } while input == nil
        
        return input!
    }
   
}


