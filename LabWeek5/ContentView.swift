//
//  ContentView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = CampusViewModel()

    var body: some View {
        TabView {
            HomeView(viewModel: viewModel)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            FacilitiesView(viewModel: viewModel)
                .tabItem {
                    Label("Facilities", systemImage: "building.2.fill")
                }

            CoursesView(viewModel: viewModel)
                .tabItem {
                    Label("Courses", systemImage: "book.fill")
                }

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
