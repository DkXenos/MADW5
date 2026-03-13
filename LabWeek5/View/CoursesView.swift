//
//  CoursesView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import SwiftUI

struct CoursesView: View {
    var viewModel: CampusViewModel

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.courses) { course in
                        NavigationLink(destination: CourseDetailView(course: course, viewModel: viewModel)) {
                            CourseCard(course: course)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationTitle("Courses")
        }
    }
}

struct CourseCard: View {
    let course: Course

    var body: some View {
        HStack(spacing: 16) {
            Image(course.lecturerImageName.isEmpty ? "person.crop.circle.fill" : course.lecturerImageName) 
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray.opacity(0.2), lineWidth: 1))

            VStack(alignment: .leading, spacing: 4) {
                Text(course.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text(course.lecturer)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }

            Spacer()

            StatusBadge(status: course.status)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

struct StatusBadge: View {
    let status: CourseStatus

    private var color: Color {
        switch status {
        case .upcoming:   return .blue
        case .inProgress: return .orange
        case .completed:  return .green
        }
    }

    private var title: String {
        switch status {
        case .upcoming:   return "Upcoming"
        case .inProgress: return "In Progress"
        case .completed:  return "Completed"
        }
    }

    var body: some View {
        Text(title)
            .font(.caption)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(color)
            .clipShape(Capsule())
    }
}

#Preview {
    CoursesView(viewModel: CampusViewModel())
}
