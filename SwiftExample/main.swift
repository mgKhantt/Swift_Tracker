//
//  main.swift
//  SwiftExample
//
//  Created by Khant Phone Naing  on 15/11/2024.
//

import Foundation

class Track {
    let name: String
    let instructor: String
    
    init(name: String, instructor: String) {
        self.name = name
        self.instructor = instructor
    }
}

struct Student {
    let name: String
    let age: Int
}

let tracks: [Track] = [
    Track(name: "Mobile", instructor: "Tommy"), //0
    Track(name: "Web", instructor: "Brian"),    //1
    Track(name: "Game", instructor: "Colton")   //2
]

let students = ["Harry", "Ron", "Hermione"]

var assigments: [String : Track] = [:]

for student in students {
    let track = Int.random(in: 0 ..< tracks.count) //random number == 1
    assigments[student] = tracks[track]  //track = 1 , student = Harry
    ///assigments = [
    ///Harry : 1,
    ///Ron : 1,
    ///Hermione : 0
    ///]
}

for (student, track) in assigments {
    print("\(student) got \(track.name) with \(track.instructor)")
}
