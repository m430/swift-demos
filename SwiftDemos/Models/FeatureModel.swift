//
//  FeatureModel.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import Foundation
import Dependencies

final class FeatureModel: ObservableObject {
    @Dependency(\.continuousClock) var clock
    @Dependency(\.date.now) var now
    @Dependency(\.mainQueue) var mainQueue
    @Dependency(\.uuid) var uuid
    
    func addButtonTapped() async throws {
        try await self.clock.sleep(for: .seconds(1))
//        self.it
    }
}
