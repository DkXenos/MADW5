//
//  HomeView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

struct HomeView: View {
    var viewModel: CampusViewModel

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    headerSection
                    countCardsSection
                    featuredCourseSection
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Home")
        }
    }

    private var headerSection: some View {
        VStack(spacing: 6) {
            Text("Campus Guide")
                .font(.title)
                .fontWeight(.bold)

            Text("Explore facilities and track your courses.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 8)
    }

    private var countCardsSection: some View {
        HStack(spacing: 16) {
            StatCard(
                icon: "book.fill",
                count: viewModel.courseCount,
                label: "Courses",
                color: .blue
            )
            StatCard(
                icon: "building.2.fill",
                count: viewModel.facilityCount,
                label: "Facilities",
                color: .green
            )
        }
    }

    @ViewBuilder
    private var featuredCourseSection: some View {
        if let course = viewModel.featuredCourse {
            VStack(alignment: .leading, spacing: 8) {
                Text("Featured Course")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)

                Text(course.name)
                    .font(.headline)

                Text(course.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(14)
        }
    }
}

struct StatCard: View {
    let icon: String
    let count: Int
    let label: String
    let color: Color

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(.white)

            Text("\(count)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)

            Text(label)
                .font(.caption)
                .foregroundStyle(.white.opacity(0.85))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(color)
        .cornerRadius(14)
    }
}

#Preview {
    HomeView(viewModel: CampusViewModel())
}
