//
//  ContentView.swift
//  Pinch
//
//  Created by Hugo Rodrigues on 08/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {

        NavigationView {
            ZStack {
//                MARK: - Page Image
                Image("magazine-back-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                
            } //: ZStack
            .navigationTitle("Asta & Yuno")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 2)) {
                    isAnimating = true
                }
            })
        } //: NavigationView
        .navigationViewStyle(.stack)
        
    }
}

#Preview {
    ContentView()
}
