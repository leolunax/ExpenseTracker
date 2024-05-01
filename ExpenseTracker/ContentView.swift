//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Leonardo Luna on 5/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack( alignment: .leading, spacing:24) {
                    
                    //MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                    
                    
                }
            }
        }
        .navigationViewStyle(.stack)
        
        
        
    }
}

#Preview {
    ContentView()
}
