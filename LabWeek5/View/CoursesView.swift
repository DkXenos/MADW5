//
//  CoursesView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// Displays a list of student courses.
/// Tapping a row navigates to the course detail page.
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

// MARK: - Row Component

/// A single row showing course name, lecturer, and a coloured status badge.
struct CourseRow: View {
    let course: Course

    var body: some View {
        HStack {
            // Lecturer icon
            Image(systemName: course.lecturerImageName)
                .font(.title2)
                .foregroundStyle(.gray)
                .frame(width: 36)

            VStack(alignment: .leading, spacing: 2) {
                Text(course.name)
                    .font(.headline)
                    .lineLimit(2)
                Text(course.lecturer)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            // Status badge
            StatusBadge(status: course.status)
        }
        .padding(.vertical, 4)
    }
}

// MARK: - Status Badge

/// A small coloured capsule indicating the course status.
struct StatusBadge: View {
    let status: CourseStatus

    /// Colour mapped to each status.
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

// MARK: - Preview

#Preview {
    CoursesView(viewModel: CampusViewModel())
}
