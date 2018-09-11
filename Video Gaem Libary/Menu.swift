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
    
    func go () {
        //This functions is going to handle making the menu run. It will display the menu and take user input until the user wishes to quit the application
        while !shouldQuit {
            printMenu()
            getInPut()
            quit()
            }
    }
    
    func printMenu() {
        //This should contain a print statement that prints out a formated list of options.
        //Options: Add game, remove game , list available games , check ou game, check in game, list checked out games , quit
        
        print("""
             MENU

             1.Add Game
             2.Remove game
             3.List Available Games
             4.Check Out A Game
             5.Check In A Game
             6.List Checked Out Games
             7. QUIT!!!
             """)
    }
    
    func quit()  {
        //This function will be called when the user is ready to quit the application.
        //Since the user is ready to quit we set ready to quit to true.
        shouldQuit = true
        //Show the user a message
        print("Thanks for using The Video Game Library.")
        
    }
    func getInPut() -> String{
        //Take user input using readLine. Check to make sure that the input isn't nil or it's not an empty String. If it's valid input, return the input, return the input. Otherwise, make the user enter input again.
        var inPut: String? = nil
        repeat {
            let userInPut = readLine()//Take user input using readline
            if let unwrappedInput = userInPut {//if input is not nil, assign it to a new constant using if let.
                if unwrappedInput != ""{
                inPut = unwrappedInput
                } else{
                    print("Invalid input")
                }
                } else {
                print("Invalid inout")//Since the input was nil give teh user an error message.
            }
        } while inPut == nil
        return inPut!
    }
    
    
    
}

