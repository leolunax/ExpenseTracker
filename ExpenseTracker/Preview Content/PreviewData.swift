//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Leonardo Luna on 5/1/24.
//

import Foundation

var transcactionPreviewData =  Transaction(id: 1, date: "01/24/2022", institution: "Sepo", account: "Visa Sepo", merchant: "Apple", amount: 100.50, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)


var transactionListPreviewData = [Transaction](repeating: transcactionPreviewData, count: 10)
