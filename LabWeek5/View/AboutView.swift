//
//  AboutView.swift
//  LabWeek5
//
//  Created by Jason TIo on 12/03/26.
//

import SwiftUI

/// About page showing information about the app and its creator.
struct AboutView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {

                Spacer()

                // MARK: - App Icon
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.blue)

                // MARK: - App Name
                Text("Campus Guide App")
                    .font(.title2)
                    .fontWeight(.bold)

                // MARK: - Class Name
                Text("Mobile Application Development")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                // MARK: - Creator Info
                Text("Jason Tio")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                // MARK: - Exercise Label
                Text("Exercise Week 5 - Navigation Pt.2")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                // MARK: - Built With
                Text("Built using SwiftUI with MVVM architecture.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(.top, 4)

                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding()
            .navigationTitle("About")
        }
    }
}

// MARK: - Preview

#Preview {
    AboutView()
}
