//
//  ContentView.swift
//  Counter
//
//  Created by Parker Rushton on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("count") var count: Int = 0
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .onTapGesture(perform: increaseCount)
                .onLongPressGesture(perform: resetCount)
            
            Text("\(count)")
                .font(.system(size: 150))
                .fixedSize()
                .allowsHitTesting(false)
        }
    }
    
    func increaseCount() {
        count += 1
    }
    
    func resetCount() {
        count = 0
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
