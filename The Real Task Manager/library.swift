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
        
        if input == "oof" {
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
    
    func listTask() {                                           // Lists all tasks whether complete or incomplete
        print("Here is your task/s!")
        for task in incompleteTaskArray {
            print(task.title)
        }
        
    }
    func taskIncomplete() {                                         // Check Incompleted in Menu
        for index in 0..<completeTaskArray.count {
            print("\(index). \(completeTaskArray[index].title)")
        }
        
        print("Please enter the index of the task you wish to check Incompleted.")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input, Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        incompleteTaskArray.append(completeTaskArray.remove(at: userInput!))
        
        print("Task has been marked as Incomplete.")
        
        
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
        
        completeTaskArray.append(incompleteTaskArray.remove(at: userInput!))
        
        print("Task has been marked as complete.")
        
    }
    func listCompleted() {
        for task in completeTaskArray {
            print(task.title)
        }
    }
    func listIncompleted() {
        for task in incompleteTaskArray {
        print(task.title)
        }
    }
    
    func forceReligion() {
        print("Can I have 10 minutes of your time to discuss with you the church of the flying spaghetti monster? Please respond with yes or no.")
        
        let personInput = readLine()
        if personInput == "no" {
            print("R'Amen. His Noodliness, the Ancient of Noodles, the Flying Spaghetti Monster is the ultimate truth in the universe. He is the central point of worship in the religion commonly known as the Church of the Flying Spaghetti Monster or Pastafarianism. Pastafarian Prayer. Our pasta, who art in a colander, draining be your noodles. Thy noodle come, Thy sauce be yum, on top some grated Parmesan. Give us this day, our garlic bread, and forgive us our trespasses, as we forgive those who trample on our lawns. Around the time of Christmas, Hanukkah and Kwanzaa, Pastafarians celebrate a vaguely defined holiday named 'Holiday'. Holiday does not take place on a specific date so much as it is the Holiday season itself. ... Pastafarians celebrate Holiday however they please.  A decline in the number of pirates over the years is the cause of global warming. The central creation truth is that an invisible and undetectable Flying Spaghetti Monster created the universe after drinking heavily. Touched by His Noodly Appendage.")
        } else {
            if personInput == "yes" {
                print("Keep the noodle upon yerself, sail the high seas and pray to his noodly appendage every day.")
            }
        }
    }
}
