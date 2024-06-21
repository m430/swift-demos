//
//  PickerView.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/21.
//

import SwiftUI
import ComposableArchitecture

struct PickerView: View {
    @Bindable var store: StoreOf<PickerFeature>
    
    var body: some View {
        NavigationStack {
            VStack {
               Text("1")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Picker("", selection: $store.theme) {
                        ForEach(Theme.allCases) { theme in
                            Text(theme.name).tag(theme)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
        }
    }
}

#Preview {
    PickerView(
        store: Store(initialState: PickerFeature.State()) {
            PickerFeature()
        }
    )
}
