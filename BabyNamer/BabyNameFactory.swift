//
//  BabyNameFactory.swift
//  BabyNamer
//
//  Created by Matt Bonness on 1/24/17.
//  Copyright © 2017 Motorola Solutions Inc. All rights reserved.
//

import Foundation

class BabyNameFactory {
    var babyNames = [BabyName]()
    
    init() {
        babyNames.append(BabyName(name: "Arya", gender: .Female))
        babyNames.append(BabyName(name: "Bronn", gender: .Male))
        babyNames.append(BabyName(name: "Cersei", gender: .Female))
        babyNames.append(BabyName(name: "Daenerys", gender: .Female))
        babyNames.append(BabyName(name: "Hodor", gender: .Male))
        babyNames.append(BabyName(name: "Jaime", gender: .Female))
        babyNames.append(BabyName(name: "Jon", gender: .Male))
        babyNames.append(BabyName(name: "Tyrion", gender: .Male))
        babyNames.append(BabyName(name: "Ygritte", gender: .Female))
    }
    
    func generateNameForGender(gender: Gender) -> BabyName? {
        // code here to randomly select name for specified gender
        if gender == Gender.Unknown {
            return nil
        }
        let names = babyNames.filter{ $0.gender == gender }
        let i = Int(arc4random_uniform(UInt32(names.count)))
        return names[i]
    }
}
