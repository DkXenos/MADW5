//
//  CourseDetailView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
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
            VStack(spacing: 24) {
                Text(liveCourse.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                StatusBadge(status: liveCourse.status)
                
                VStack(spacing: 8) {
                    Image(liveCourse.lecturerImageName.isEmpty ? "person.crop.circle.fill" : liveCourse.lecturerImageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(0.2), lineWidth: 1))
                    
                    Text(liveCourse.lecturer)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("Lecturer")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.top, 8)

                HStack {
                    Text("Credits")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(liveCourse.credits)")
                        .foregroundStyle(.secondary)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .padding(.horizontal)

                Button {
                    showMoreInfo = true
                } label: {
                    Text("More Information")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 12)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
                .padding(.top, 24)
            }
            .padding(.top, 20)
            .padding(.bottom, 40)
        }
        .navigationTitle("Course Detail")
        .navigationBarTitleDisplayMode(.large)
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
