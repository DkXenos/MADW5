//
//  Course.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import Foundation

enum CourseStatus: String, CaseIterable {
    case upcoming = "Upcoming"
    case inProgress = "In Progress"
    case completed = "Completed"
}

struct Course: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let lecturer: String
    let lecturerImageName: String
    let credits: Int
    var status: CourseStatus

    init(
        id: UUID = UUID(),
        name: String,
        description: String,
        lecturer: String,
        lecturerImageName: String = "person.circle.fill",
        credits: Int,
        status: CourseStatus
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.lecturer = lecturer
        self.lecturerImageName = lecturerImageName
        self.credits = credits
        self.status = status
    }
}
