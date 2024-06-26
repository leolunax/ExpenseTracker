//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Leonardo Luna on 5/1/24.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
