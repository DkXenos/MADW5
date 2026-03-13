//
//  SampleData.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import Foundation

struct SampleData {

    static let facilities: [Facility] = [
        Facility(
            name: "Library",
            location: "Old Building, Floor 2",
            description: "Quiet study space with books and journals.",
            iconName: "book.fill",
            imageName: "bg1"
        ),
        Facility(
            name: "Computer Lab",
            location: "Old Building, Floor 3",
            description: "Fully equipped lab with high-performance workstations for programming and design projects.",
            iconName: "desktopcomputer",
            imageName: "bg2"
        ),
        Facility(
            name: "SIFT",
            location: "Old Building, Floor 5",
            description: "Student Innovation and Future Technology center for collaborative tech projects and workshops.",
            iconName: "building.2.fill",
            imageName: "bg1"
        )
    ]

    static let courses: [Course] = [
        Course(
            name: "Mobile Application Development",
            description: "Learn to build iOS applications using Swift and SwiftUI.",
            lecturer: "Bu. There",
            lecturerImageName: "pfp1",
            credits: 3,
            status: .inProgress
        ),
        Course(
            name: "Statistics",
            description: "Introduction to probability, distributions, and statistical inference.",
            lecturer: "Pak. Christo",
            lecturerImageName: "pfp2",
            credits: 3,
            status: .completed
        ),
        Course(
            name: "Visual Programming",
            description: "Explore visual programming paradigms and GUI development techniques.",
            lecturer: "Pak. Evan",
            lecturerImageName: "pfp1",
            credits: 3,
            status: .upcoming
        )
    ]
}
