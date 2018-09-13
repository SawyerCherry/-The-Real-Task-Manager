//
//  library.swift
//  The Real Task Manager
//
//  Created by Sawyer Cherry on 9/11/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation

class Library {
    
    private var incompleteTaskArray = [Task]()
    private var completeTaskArray = [Task]()
    
    func addTask() {
        print("Enter the Password.")
        var input: String? = nil
        
        repeat {
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            if line != "" {
                input = line
            } else {
                print("Invalid Input!")
            }
        } while input == nil
        
        if input == "dooby" {
            print("You're Inside The Add Task Function")
            print("Please enter the title of the New Task that you would like to add")
            
            var newTaskTitle = readLine()
            
            while newTaskTitle == nil || newTaskTitle == "" {
                print("Invalid Title, Please Try Again")
                newTaskTitle = readLine()!
                
                
            }
            
            let newTask = Task(title: newTaskTitle!, completed: false)
            incompleteTaskArray.append(newTask)
            
            
            print(newTask.title)
            
            print("Sucessfully Added To The Data Base!")
            
        }
    }
    func removeTask() {
        print("Please enter the task that you wish to remove.")
        for index in 0..<incompleteTaskArray.count {
            print("\(index). \(incompleteTaskArray[index].title)")
        }
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid Input.")
            userInput = Int(readLine()!)
        }
        incompleteTaskArray.remove(at: userInput!)
    }
    
    func listTask() {
        print("Here is your task/s!")
        for task in incompleteTaskArray {
            print(task.title)
        }
        
    }
    func taskIncomplete() {
        
        
    }
    func taskComplete() {
        
        
        for index in 0..<incompleteTaskArray.count {
            print("\(index). \(incompleteTaskArray[index].title)")
        }
        
        print("Please enter the index of the task you wish to check completed.")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input, Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        incompleteTaskArray[userInput!].completed = true
        print("Task has been marked as complete.")
    }
    func listCompleted() {
        print(completeTaskArray)
    }
    func listIncompleted() {
        print(incompleteTaskArray)
        
    }
    
    func forceReligion() {
        print("Can I have 10 minutes of your time to discuss with you the church of the flying spaghetti monster?")
        
        let personInput = readLine()
        if personInput == "no" {
            print("R'Amen. His Noodliness, the Ancient of Noodles, the Flying Spaghetti Monster is the ultimate truth in the universe. He is the central point of worship in the religion commonly known as the Church of the Flying Spaghetti Monster or Pastafarianism.")
        } else {
            print("You have Chosen Wisely")
        }
    }
}
