//
//  CourseDetailView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

struct CourseDetailView: View {
    let course: Course
    var viewModel: CampusViewModel

    @State private var showMoreInfo = false

    private var liveCourse: Course {
        viewModel.courses.first(where: { $0.id == course.id }) ?? course
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                StatusBadge(status: liveCourse.status)

                Image(systemName: liveCourse.lecturerImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .foregroundStyle(.gray)

                Text(liveCourse.lecturer)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                HStack {
                    Text("Credits")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("\(liveCourse.credits)")
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

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

#Preview {
    NavigationStack {
        CourseDetailView(course: SampleData.courses[0], viewModel: CampusViewModel())
    }
}
