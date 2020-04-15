//
//  journey.swift
//  Explorers
//
//  Created by Faisal on 14/04/20.
//  Copyright © 2020 Challenge2. All rights reserved.
//

import Foundation
struct journey{
    var challenge:String
    var type:String
    var isteam:String
    var goals:[String]
    var duration:String
    var constraints:[String]
    var deliverables:[String]
    var imagename:String
}

class journeyManage{
    var arrayofjourney:[journey]
    init() {
        arrayofjourney = [
            journey(challenge: "Challenge 1",
                    type: "Mini",
                    isteam: "Group Challenge",
                    goals: ["Full Cycle CBL",
                            "HIG (Human Interface Guidelines)",
                            "prototyping",
                            "Xcode & Basic Swift",
                            "Group Collaboration"],
                    duration: "5 Weeks",
                    constraints: ["No Game",
                                  "No Back Ends",
                                  "No Augmented Reality"],
                    deliverables: ["Working Prototype"],
                    imagename: "challenge1"),
            journey(challenge: "Challenge 2",
                    type: "Nano",
                    isteam: "Individual Challenge",
                    goals: ["Applied Investigation",
                            "Everyone can code"],
                    duration: "2 Weeks",
                    constraints: ["This is Individual Work",
                                  "No third-party library",
                                  "Use HIG interfaces Essentials"],
                    deliverables: ["Sketch Prototype",
                                   "Learning Backlog Document",
                                   "Xcode Project",
                                   "Feedbacl Rebort Document"],
                    imagename: "challenge2"),
            journey(challenge: "Challenge 3",
                    type: "Mini",
                    isteam: "Group Challenge",
                    goals: ["Collaboration",
                            "Best Practice Coding",
                            "Understanding User",
                            "Best Practice Project Management"],
                    duration: "4 Weeks",
                    constraints: ["No Constraint"],
                    deliverables: ["User narration",
                                   "trello for project",
                                   "Working app with clean code"],
                    imagename: "challenge3"),
            journey(challenge: "Challenge 4",
                    type: "Mini",
                    isteam: "Group Challenge",
                    goals: ["TBA"],
                    duration: "4 Weeks",
                    constraints: ["TBA"],
                    deliverables: ["TBA"],
                    imagename: "challenge4"),
            journey(challenge: "Challenge 5",
                    type: "Nano",
                    isteam: "Individual Challenge",
                    goals: ["TBA"],
                    duration: "2 Weeks",
                    constraints: ["TBA"],
                    deliverables: ["TBA"],
                    imagename: "challenge5"),
            journey(challenge: "Macro Challenge",
                    type: "Macro",
                    isteam: "Group Challenge",
                    goals: ["TBA"],
                    duration: "12 Weeks",
                    constraints: ["TBA"],
                    deliverables: ["TBA"],
                    imagename: "challenge6")
        ]
    }
}
