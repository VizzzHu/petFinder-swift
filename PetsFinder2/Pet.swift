//
//  Pets.swift
//  PetsFinder2
//
//  Created by Xianlin Hu on 9/15/17.
//  Copyright © 2017 Xianlin Hu. All rights reserved.
//

import UIKit

class Pet {
    
    // Mark: Properties
    var name: String
    var gender: String
    var age: Int
    var breed: String
    var color: String
    var lostPlace: String
    var contactor: String
    var contactorNum: String
    var photo: UIImage
    var isFound: Bool
    
    init?(name: String, gender: String, age: Int, breed: String, color: String, lostPlace: String, contactor: String, contactorNum: String, photo: UIImage, isFound: Bool = false) {
        // name and contactorNum is must-to-have
        if name.isEmpty || contactorNum.isEmpty {
            return nil
        }

        self.name = name
        self.gender = gender
        self.age = age
        self.breed = breed
        self.color = color
        self.lostPlace = lostPlace
        self.contactor = contactor
        self.contactorNum = contactorNum
        self.photo = photo
        self.isFound = isFound
    }
}
