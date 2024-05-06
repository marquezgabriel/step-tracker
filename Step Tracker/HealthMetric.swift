//
//  HealthMetric.swift
//  Step Tracker
//
//  Created by Gabriel Marquez on 2024-05-06.
//

import Foundation

struct HealthMetric: Identifiable {
    let id = UUID()
    let date: Date
    let value: Double
}
