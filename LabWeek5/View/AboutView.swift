//
//  AboutView.swift
//  LabWeek5
//
//  Created by Jason TIo on 13/03/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.blue)

                Text("Campus Guide App")
                    .font(.title2)
                    .fontWeight(.bold)

                Text("Mobile Application Development")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Text("Jason Tio")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Text("Exercise Week 5 - Navigation Pt.2")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

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

#Preview {
    AboutView()
}
