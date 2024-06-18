//
//  FourCharacters.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import Foundation
import SwiftUI

@propertyWrapper
struct FourCharacters {
    private var value = ""
    
    var wrappedValue: String {
        get { value }
        set { value = String(newValue.prefix(4)) }
    }
}


struct PropertyWrapper_Intro: View {
    @State private var newPIN = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Property Wrapper",
                       subtitle: "Introduction",
                       desc: "Property wrappers allow you to add the same logic to many properties."
            )
            
            Text("Old PIN: 1234")
            Text("New PIN: 567890")
            
            Button("Save PIN") {
                @FourCharacters var newPin: String
                newPin = "567890"
                newPIN = newPin
            }
            
            Text("Your new PIN: ") +
            Text(newPIN)
                .bold()
        }
    }
}

#Preview {
    PropertyWrapper_Intro()
}
