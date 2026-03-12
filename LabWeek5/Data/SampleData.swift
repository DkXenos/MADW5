//
//  SampleData.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import Foundation

struct SampleData {

    static let facilities: [Facility] = [
        Facility(
            name: "Library",
            location: "Old Building, Floor 2",
            description: "Quiet study space with books and journals.",
            iconName: "book.fill"
        ),
        Facility(
            name: "Computer Lab",
            location: "Old Building, Floor 3",
            description: "Fully equipped lab with high-performance workstations for programming and design projects.",
            iconName: "desktopcomputer"
        ),
        Facility(
            name: "SIFT",
            location: "Old Building, Floor 5",
            description: "Student Innovation and Future Technology center for collaborative tech projects and workshops.",
            iconName: "building.2.fill"
        )
    ]

    static let courses: [Course] = [
        Course(
            name: "Mobile Application Development",
            description: "Learn to build iOS applications using Swift and SwiftUI.",
            lecturer: "Bu. There",
            credits: 3,
            status: .inProgress
        ),
        Course(
            name: "Statistics",
            description: "Introduction to probability, distributions, and statistical inference.",
            lecturer: "Pak. Christo",
            credits: 3,
            status: .completed
        ),
        Course(
            name: "Visual Programming",
            description: "Explore visual programming paradigms and GUI development techniques.",
            lecturer: "Pak. Evan",
            credits: 3,
            status: .upcoming
        )
    ]
}
