//
//  CampusViewModel.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import Foundation

@Observable
class CampusViewModel {

    private(set) var facilities: [Facility] = SampleData.facilities
    var courses: [Course] = SampleData.courses

    var facilityCount: Int { facilities.count }
    var courseCount: Int { courses.count }
    var featuredCourse: Course? { courses.first }

    func updateCourseStatus(courseId: UUID, newStatus: CourseStatus) {
        if let index = courses.firstIndex(where: { $0.id == courseId }) {
            courses[index].status = newStatus
        }
    }
}
