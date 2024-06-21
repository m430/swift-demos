//
//  PickerFeature.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/21.
//

import Foundation
import SwiftUI
import ComposableArchitecture

enum DateType: String, Equatable, CaseIterable, Identifiable, Codable {
    case day
    case week
    case month
    
    var id: Self { self }
    
    var localizedDescription: LocalizedStringKey {
        switch self {
        case .day: return LocalizedStringKey("day")
        case .week: return LocalizedStringKey("week")
        case .month: return LocalizedStringKey("month")
        }
    }
}

enum Theme: String, CaseIterable, Equatable, Identifiable, Codable {
    var id: Self { self }
    
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan,
                .teal, .yellow:
            return .black
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }
    
    var mainColor: Color { Color(rawValue) }
    
    var name: String { rawValue.capitalized }
}

@Reducer
struct PickerFeature {
    
    @ObservableState
    struct State: Equatable {
        var dateType: DateType = .day
        var theme: Theme = .bubblegum
    }
    
    enum Action: BindableAction {
        case binding(BindingAction<State>)
    }
    
    var body: some ReducerOf<Self> {
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            case .binding:
                return .none
            }
        }
    }
}
