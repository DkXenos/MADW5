//
//  FacilitiesView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import SwiftUI

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

#Preview {
    FacilitiesView(viewModel: CampusViewModel())
}
