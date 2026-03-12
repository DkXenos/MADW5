//
//  CoursesView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

struct CoursesView: View {
    var viewModel: CampusViewModel

    var body: some View {
        NavigationStack {
            List(viewModel.courses) { course in
                NavigationLink(destination: CourseDetailView(course: course, viewModel: viewModel)) {
                    CourseRow(course: course)
                }
            }
            .navigationTitle("Courses")
        }
    }
}

struct CourseRow: View {
    let course: Course

    var body: some View {
        HStack {
            Image(course.lecturerImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 2) {
                Text(course.name)
                    .font(.headline)
                    .lineLimit(2)
                Text(course.lecturer)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            StatusBadge(status: course.status)
        }
        .padding(.vertical, 4)
    }
}

struct StatusBadge: View {
    let status: CourseStatus

    private var color: Color {
        switch status {
        case .upcoming:   return .orange
        case .inProgress: return .blue
        case .completed:  return .green
        }
    }

    var body: some View {
        Text(status.rawValue)
            .font(.caption2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(color)
            .clipShape(Capsule())
    }
}

#Preview {
    CoursesView(viewModel: CampusViewModel())
}
