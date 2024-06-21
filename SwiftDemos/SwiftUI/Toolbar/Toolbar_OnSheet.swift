//
//  Toolbar_OnSheet.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_OnSheet: View {
    @State private var presentSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            presentSheet = true
        }
        .sheet(isPresented: $presentSheet) {
            ConfirmationView()
        }
    }
}

struct ConfirmationView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
            }
            .padding(.top)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirm", action: { dismiss() })
                }
                ToolbarItem(placement: .destructiveAction) {
                    Button("Delete", action: { dismiss() })
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", action: { dismiss() })
                }
            
            }
        }
    }
}

#Preview {
    Toolbar_OnSheet()
}
