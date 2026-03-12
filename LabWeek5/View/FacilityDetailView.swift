//
//  FacilityDetailView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// Shows full details for a single facility, including image, name, location, and description.
struct FacilityDetailView: View {
    let facility: Facility

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // MARK: - Facility Image
                Image(systemName: facility.iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.blue.opacity(0.6))
                    .background(Color(.systemGray6))
                    .cornerRadius(12)

                // MARK: - Name
                Text(facility.name)
                    .font(.title2)
                    .fontWeight(.bold)

                // MARK: - Location
                HStack {
                    Text("Location:")
                        .fontWeight(.semibold)
                    Text(facility.location)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                // MARK: - Description
                Text(facility.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Facility Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        FacilityDetailView(facility: SampleData.facilities[0])
    }
}
