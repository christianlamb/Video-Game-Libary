//
//  Menu.swift
//  Video Gaem Libary
//
//  Created by Christian Lamb on 9/11/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation



class Menu {
    var shouldQuit = false //when this is true we should quit running the libary
    let library = GameLibrary()
    
    
    func go () {
        //This functions is going to handle making the menu run. It will display the menu and take user input until the user wishes to quit the application
        while shouldQuit == false{//I do not know why but the code requires you to enter the number you want to select twice. Im pretty sure the error is here.
            printMenu()
            let inPut = getInPut()
            while validateInput(inPut) == false{
                //Display menu again
                printMenu()
                         }
            handleInput(inPut: inPut)
        }
    }
    func validateInput (_ input:String) -> Bool {//This function validates the input that the user gives after they see the menu
      let validMenuOptions = Array(1...8)
        guard let number = Int(input)else {
            return false
        }
        return validMenuOptions.contains(number)
    }
    
    
    
    
    func printMenu() {
        //This should contain a print statement that prints out a formated list of options.
        //Options: Add game, remove game , list available games , check ou game, check in game, list checked out games , quit
        //This is the menu as it is displayed
        print("""
             MENU

             1.Add Game
             2.Remove game
             3.List Available Games
             4.Check Out A Game
             5.Check In A Game
             6.List Checked Out Games
             7. QUIT!!!

             Please enter the number.
             """)
    }
    
    
    //Make a function called handleInput that takes out user input as a parameter and depending on what they enter print
    func handleInput(inPut: String) {
        
        
        switch inPut {
        case "1":
            library.addGame()
        case "2" :
            library.removingAGame2()
        case "3":
            library.listAvaliableGames()
        case "4":
            library.checkGameOut()
        case "5":
            library.checkGameIn()
        case "6":
            library.listCheckedOutGames()
        case "7":
            quit()
        default:
            break
        }
    }//This swotch functions takes in input and exuctes the correct function
    
    
    
    func quit()  {
        //This function will be called when the user is ready to quit the application.
        //Since the user is ready to quit we set ready to quit to true.
        
        shouldQuit = true
        //Show the user a message
        print("Thanks for using The Video Game Library.")
      
        
    }
    func getInPut() -> String {
        
        //Take user input using readLine. Check to make sure that the input isn't nil or it's not an empty String. If it's valid input, return the input, return the input. Otherwise, make the user enter input again.
       
        let userInPut = readLine()//Take user input using readline
        if userInPut == nil || userInPut == "" {
            print("Please give a valid input.")
       
        }
        return userInPut!
    }
    
    //Make a function called handleInput that takes out user input as a parameter and depending on what they enter print
    
   
    
    
    
    
}

