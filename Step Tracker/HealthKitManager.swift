//
//  HealthKitManager.swift
//  Step Tracker
//
//  Created by Gabriel Marquez on 2024-05-04.
//

import Foundation
import HealthKit
import Observation

@Observable class HealthKitManager {
    
    let store = HKHealthStore() 
    
    let types: Set = [HKQuantityType(.stepCount), HKQuantityType(.bodyMass)]
}


