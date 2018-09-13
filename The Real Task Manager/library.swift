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
        
        if input == "squareheadedcaveman" {
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
        for task in incompleteTaskArray {
            print(task)
        }
        
    }
    func taskComplete() {
        for task in completeTaskArray {
            print(task)
        }
        
    }
}


