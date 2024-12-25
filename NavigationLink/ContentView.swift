//
//  ContentView.swift
//  NavigationLink
//
//  Created by Oksana Kazarinova on 25/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView)  { EmptyView() }

                Button("Tap for detail") {
                    isShowingDetailView = true
                    // if we need ti hide it later and return to the main view
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isShowingDetailView = false
                    }
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

#Preview {
    ContentView()
}
