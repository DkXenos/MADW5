//
//  CampusViewModel.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import Foundation

/// Shared ViewModel that manages both facilities and courses data.
/// Uses @Observable macro for SwiftUI data binding.
@Observable
class CampusViewModel {

    // MARK: - Properties

    /// List of campus facilities (read-only).
    private(set) var facilities: [Facility] = SampleData.facilities

    /// List of student courses (mutable for status updates).
    var courses: [Course] = SampleData.courses

    // MARK: - Computed Properties

    /// Total number of facilities.
    var facilityCount: Int { facilities.count }

    /// Total number of courses.
    var courseCount: Int { courses.count }

    /// The first course to feature on the Home page.
    var featuredCourse: Course? { courses.first }

    // MARK: - Methods

    /// Updates the status of a course identified by its id.
    /// - Parameters:
    ///   - courseId: The UUID of the course to update.
    ///   - newStatus: The new `CourseStatus` to assign.
    func updateCourseStatus(courseId: UUID, newStatus: CourseStatus) {
        if let index = courses.firstIndex(where: { $0.id == courseId }) {
            courses[index].status = newStatus
        }
    }
}
