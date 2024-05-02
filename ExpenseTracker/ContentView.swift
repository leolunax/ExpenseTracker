//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Leonardo Luna on 5/1/24.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    //var demoData: [Double] = [8,2,3,6,12,9,2]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack( alignment: .leading, spacing:24) {
                    
                    //MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    
                    //MARK: Chart
                    let data = transactionListVM.accumulateTransactions()
                    
                    if !data.isEmpty{
                        let totalExpenses = data.last?.1 ?? 0
                        CardView {
                            VStack(alignment: .leading){
                                ChartLabel(totalExpenses.formatted(.currency(code: "USD")),type:
                                        .title, format: "$%.02f")
                                    .background(Color.systemBackground)
                                LineChart()
                            }
                                .background(Color.systemBackground)
                        }
                        .data(data)
                        .chartStyle(ChartStyle(backgroundColor: Color.systemBackground, foregroundColor: ColorGradient(Color.icon.opacity(0.4), Color.icon)))
                        .frame(height: 300)
                    }
                   
                    

                    
                    //MARK: Transaction List
                    RecentTransactionList()
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
        .accentColor(.primary)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider{
        static let transactionListVM: TransactionListViewModel = {
            let transactionListVM = TransactionListViewModel()
            transactionListVM.transactions = transactionListPreviewData
            return transactionListVM
        }()
        
        static var previews: some View{
            Group{
                ContentView()
                ContentView()
                    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            }
            .environmentObject(transactionListVM)
            
        }
    }
    

