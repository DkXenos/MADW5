//
//  CourseMoreInfoView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// Modal sheet that shows a brief course description, the current status,
/// and buttons to update the course status.
struct CourseMoreInfoView: View {
    let course: Course
    var viewModel: CampusViewModel

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {

                // MARK: - Course Title
                Text(course.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top)

                // MARK: - Description
                Text(course.description)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                // MARK: - Current Status
                Text("Current Status: \(course.status.rawValue)")
                    .fontWeight(.bold)

                Divider()

                // MARK: - Update Status Section
                VStack(spacing: 12) {
                    Text("Update Status")
                        .font(.headline)

                    Button("Mark as In Progress") {
                        viewModel.updateCourseStatus(courseId: course.id, newStatus: .inProgress)
                        dismiss()
                    }

                    Button("Mark as Completed") {
                        viewModel.updateCourseStatus(courseId: course.id, newStatus: .completed)
                        dismiss()
                    }

                    Button("Mark as Upcoming") {
                        viewModel.updateCourseStatus(courseId: course.id, newStatus: .upcoming)
                        dismiss()
                    }
                }

                Divider()

                // MARK: - Close Button
                Button("Close") {
                    dismiss()
                }
                .padding(.bottom)

                Spacer()
            }
            .padding()
        }
    }
}

// MARK: - Preview

#Preview {
    CourseMoreInfoView(course: SampleData.courses[0], viewModel: CampusViewModel())
}
