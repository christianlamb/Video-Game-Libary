//
//  Library.swift
//  Video Gaem Libary
//
//  Created by Christian Lamb on 9/13/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation


class GameLibrary {
    var gameArray: [Game] = [Game(title: "Spiderman", genre: "Action Adventure", devloper: "Insomniac"), Game (title: "Fortnite", genre: "Pubg Ripoff", devloper: "Epic ripoff"), Game(title: "2k19", genre: "Sports", devloper: "Take two"), Game(title: "GTA", genre: "Open world", devloper: "Rockstar/Take Two")]
    func addGame() {
        print("What is the title.")//Prompts user for title
        let title = readLine()//Gets input
        // while title == nil || title == "" {//validates the users Input
        //  print("Please give a valid input.")
        //}
        print("What is the genre")
        let genre = readLine()
        //while genre == nil || genre == "" {
        //   print("Please give a valid input.")
        //}
        print("Who is the devloper.")
        let devloper = readLine()
        //while devloper == nil || devloper == "" {
        //  print("Please give a valid input.")
        //}
        let newGame = Game(title: title!, genre: genre!, devloper: devloper!)
        gameArray.append(newGame)
        sleep(2)
    }
    func listAvaliableGames() {
        //We want to go througt our array of games and print the games that are currently checked in.
        for game in gameArray {
            if game.checkedIn == true {
                print(game.title)
            }
        }
        sleep(2)
    }
    
    func listCheckedOutGames()  {
        for game in gameArray {
            if game.checkedIn == false {
                print(game.title)
                let dateformatter = DateFormatter()
                dateformatter.dateFormat = "MM/dd/yyy"
                print("This game is due on: \(dateformatter.string(from: game.dueDate!))")
            }
        }
        sleep(2)
    }
    
    func removingAGame2() {
        for index in 0..<gameArray.count {//The index prints a number best to every option
                print("\(index). \(gameArray[index].title)")
            }
        print("Please input the number next to the game you would like to remove..")
        let validUserIndex = (0..<gameArray.count)
        let gameToBeRemoved = Int(readLine()!)
        while gameToBeRemoved == nil || !validUserIndex.contains(gameToBeRemoved!){
            print("Invalid input")
        }
          
    
        gameArray.remove(at: gameToBeRemoved!)//This removes the selected game from teh array.
        print("Updated game list.")
        
        for game in gameArray {//This prints the list of games left after the user removes one
            print(game.title)
        }
        sleep(2)
        
        
        
    }
    
    
   
    
    func checkGameOut() {
        for index in 0..<gameArray.count {//Prints a value next to ebery option that can be used as input.
            if gameArray[index].checkedIn == true {
                print("\(index). \(gameArray[index].title)")
            }
        }
        
        print("Please enter the index of the game you wish to check out.")
     
        
        let validUserIndex = (0..<gameArray.count)
        let userInput = Int(readLine()!)
        while userInput == nil || !validUserIndex.contains(userInput!){
            print("Invalid input")//This Makes sure the number inputed is within the arrays index.
        }
        
      
        gameArray[userInput!].checkedIn = false
        
        let currentDate = Calendar.current
        let dueDate = currentDate.date(byAdding: .day,value: 14, to: Date())//Adds 14 days to the current date and makes that the due date.
        gameArray[userInput!].dueDate = dueDate
        let dateformatter = DateFormatter()//This creats a date format we can use
        dateformatter.dateFormat = "MM/dd/yyy"//This sets the format
        print("This game is due on: \(dateformatter.string(from: dueDate!))")
        sleep(2)
    }
    
    
    func checkGameIn () {
        for index in 0..<gameArray.count {
            if gameArray[index].checkedIn == false {
                print("\(index). \(gameArray[index].title)")
            }//Prints every game that is checked out and a index that can be used as an input
        }
        print("Please input the index of the game you want to check in.")
        
       
        let validUserIndex = (0..<gameArray.count)
        let userInput = Int(readLine()!)
        while userInput == nil || !validUserIndex.contains(userInput!){
            print("Invalid input")//This Makes sure the number inputed is within the arrays index.
        }
     
        gameArray[userInput!].checkedIn = true
       //Changes the selected game to being checked in
        
    }
    
    
    
  
    
    
    
    
}

    
    
    

