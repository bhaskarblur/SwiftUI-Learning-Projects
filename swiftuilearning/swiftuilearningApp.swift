//
//  swiftuilearningApp.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 29/10/23.
//

import SwiftUI

@main
struct swiftuilearningApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
