//
//  ChartDataTypes.swift
//  Step Tracker
//
//  Created by Gabriel Marquez on 2024-05-10.
//

import Foundation

struct WeekdayChartData: Identifiable {
    let id = UUID()
    let date: Date
    let value: Double
}
