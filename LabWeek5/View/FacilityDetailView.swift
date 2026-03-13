//
//  FacilityDetailView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import SwiftUI

struct FacilityDetailView: View {
    let facility: Facility

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(facility.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                    .clipped()
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
