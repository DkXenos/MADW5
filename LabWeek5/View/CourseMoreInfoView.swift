//
//  CourseMoreInfoView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import SwiftUI

struct CourseMoreInfoView: View {
    let course: Course
    var viewModel: CampusViewModel

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Text(course.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top)

                Text(course.description)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                Text("Current Status: \(course.status.rawValue)")
                    .fontWeight(.bold)

                Divider()

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

#Preview {
    CourseMoreInfoView(course: SampleData.courses[0], viewModel: CampusViewModel())
}
