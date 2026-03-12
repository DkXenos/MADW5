//
//  Facility.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import Foundation

struct Facility: Identifiable {
    let id: UUID
    let name: String
    let location: String
    let description: String
    let iconName: String
    let imageName: String

    init(
        id: UUID = UUID(),
        name: String,
        location: String,
        description: String,
        iconName: String = "building.2",
        imageName: String = ""
    ) {
        self.id = id
        self.name = name
        self.location = location
        self.description = description
        self.iconName = iconName
        self.imageName = imageName
    }
}
