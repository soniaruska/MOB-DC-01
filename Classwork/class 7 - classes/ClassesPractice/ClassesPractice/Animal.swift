//
//  Animal.swift
//  ClassesPractice
//
//  Created by Sonia Ourmaonva on 1/14/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import Foundation

class Animal {
    var name = ""
    var species = ""
    
    func stringRepresentation() -> String {
        return ("The animal is a \(self.species), it's name is \(self.name).")
    }
}