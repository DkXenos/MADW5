//
//  Course.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import Foundation

/// Possible statuses for a course.
enum CourseStatus: String, CaseIterable {
    case upcoming = "Upcoming"
    case inProgress = "In Progress"
    case completed = "Completed"
}

/// Represents a student course with its details.
struct Course: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let lecturer: String
    /// System image name used as a lecturer placeholder.
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
