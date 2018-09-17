//
//  main.swift
//  Video Gaem Libary
//
//  Created by Christian Lamb on 9/10/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation

//Features
/*
 -List of games
 -Navigate library
 -Add games
 -Remove games
 -List all games
 -List a games dicription
 -Checkout games
 -Checkin games
 */


//OutLine
/*
 1. Greet user
 2. Show menu
 |--------|---------|-------|---------|--------|---------|
 add      remove  List    CheckOut  CheckIn  List      List
 games    games   all     games     games    CheckedIn CheckedOut
 games                      Games      Games
 */



//Subscrips Needd
/*
 -Game class
 -array of games
 -a way to manage the array of games
 */

print("Welcome to the Video Game Library\n")



let libaryMenu = Menu()//Creat an instance of our Menu class, which handles showing the menu, taking user inout, and interfacing with teh rest of the application.

libaryMenu.go()///This handles running the logic loop for our video game library. once we break out of this function,the library will close.






















