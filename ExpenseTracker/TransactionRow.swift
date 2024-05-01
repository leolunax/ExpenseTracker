//
//  TransactionRow.swift
//  ExpenseTracker
//
//  Created by Leonardo Luna on 5/1/24.
//

import SwiftUI

struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View {
        HStack(spacing: 20){
            VStack(alignment: .leading, spacing: 6){
                //MARK: Transaction Merchant
                
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                //MARK: Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                //MARK: Transaction Date
                Text(transaction.dateParsed,format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            
            }
            
            Spacer()
            
            //MARK: Transcation Amount
            Text(transaction.signedAmount, format: .currency(code:"USD"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ?
                                Color.text : .primary)
            
            
        }
        .padding([.top, .bottom], 8)
    }
}

#Preview {
        TransactionRow(transaction:transactionListPreviewData[0])
}
