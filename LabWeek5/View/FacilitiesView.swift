//
//  FacilitiesView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// Displays a list of campus facilities.
/// Tapping a row navigates to the facility detail page.
struct FacilitiesView: View {
    var viewModel: CampusViewModel

    var body: some View {
        NavigationStack {
            List(viewModel.facilities) { facility in
                NavigationLink(destination: FacilityDetailView(facility: facility)) {
                    FacilityRow(facility: facility)
                }
            }
            .navigationTitle("Facilities")
        }
    }
}

// MARK: - Row Component

/// A single row in the facilities list showing icon, name, and location.
struct FacilityRow: View {
    let facility: Facility

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: facility.iconName)
                .font(.title3)
                .foregroundStyle(.blue)
                .frame(width: 32)

            VStack(alignment: .leading, spacing: 2) {
                Text(facility.name)
                    .font(.headline)
                Text(facility.location)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 4)
    }
}

// MARK: - Preview

#Preview {
    FacilitiesView(viewModel: CampusViewModel())
}
