//
//  Check Games in and out.swift
//  Video Gaem Libary
//
//  Created by Christian Lamb on 9/10/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation

func checkGameOut()  {
    if checkedIn == true {
        checkedIn = false
        print("The game is now checked out.")
    } else {
        print("The game is already checked out.")
    }
}

func returnAGame() {
    if !checkedIn {
        print("The book has been returned.")
        checkedIn = true
    } else {
        print("The book is not checked out.")
    }
}

