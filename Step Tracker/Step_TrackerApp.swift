//
//  Step_TrackerApp.swift
//  Step Tracker
//
//  Created by Gabriel Marquez on 2024-04-30.
//

import SwiftUI

@main
struct Step_TrackerApp: App {
    
    let hkManager = HealthKitManager()
    
    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(hkManager)
        }
    }
}
