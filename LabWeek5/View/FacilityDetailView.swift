//
//  FacilityDetailView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

struct FacilityDetailView: View {
    let facility: Facility

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(systemName: facility.iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.blue.opacity(0.6))
                    .background(Color(.systemGray6))
                    .cornerRadius(12)

                Text(facility.name)
                    .font(.title2)
                    .fontWeight(.bold)

                HStack {
                    Text("Location:")
                        .fontWeight(.semibold)
                    Text(facility.location)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text(facility.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Facility Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FacilityDetailView(facility: SampleData.facilities[0])
    }
}
