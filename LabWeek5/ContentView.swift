//
//  ContentView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// Root view of the app.
/// Uses a TabView to navigate between Home, Facilities, Courses, and About pages.
struct ContentView: View {
    @State private var viewModel = CampusViewModel()

    var body: some View {
        TabView {
            // MARK: - Home Tab
            HomeView(viewModel: viewModel)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            // MARK: - Facilities Tab
            FacilitiesView(viewModel: viewModel)
                .tabItem {
                    Label("Facilities", systemImage: "building.2.fill")
                }

            // MARK: - Courses Tab
            CoursesView(viewModel: viewModel)
                .tabItem {
                    Label("Courses", systemImage: "book.fill")
                }

            // MARK: - About Tab
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
