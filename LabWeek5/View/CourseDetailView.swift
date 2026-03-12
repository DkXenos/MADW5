//
//  CourseDetailView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// Detail page for a single course.
/// Shows the course name, status badge, lecturer image, lecturer name, credits,
/// and a "More Information" button that opens a modal sheet.
struct CourseDetailView: View {
    let course: Course
    var viewModel: CampusViewModel

    /// Controls the presentation of the More Information sheet.
    @State private var showMoreInfo = false

    /// Live course fetched from the view model so status updates are reflected.
    private var liveCourse: Course {
        viewModel.courses.first(where: { $0.id == course.id }) ?? course
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {

                // MARK: - Status Badge
                StatusBadge(status: liveCourse.status)

                // MARK: - Lecturer Image
                Image(systemName: liveCourse.lecturerImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .foregroundStyle(.gray)

                // MARK: - Lecturer Name
                Text(liveCourse.lecturer)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                // MARK: - Credits
                HStack {
                    Text("Credits")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("\(liveCourse.credits)")
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

                // MARK: - More Information Button
                Button {
                    showMoreInfo = true
                } label: {
                    Text("More Information")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.blue)
                        .cornerRadius(12)
                }
            }
            .padding()
        }
        .navigationTitle("Course Detail")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showMoreInfo) {
            CourseMoreInfoView(course: liveCourse, viewModel: viewModel)
        }
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        CourseDetailView(course: SampleData.courses[0], viewModel: CampusViewModel())
    }
}
