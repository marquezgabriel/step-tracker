//
//  StepPieChart.swift
//  Step Tracker
//
//  Created by Gabriel Marquez on 2024-05-13.
//

import SwiftUI
import Charts

struct StepPieChart: View {
    
    var chartData: [WeekdayChartData]
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading) {
                Label("Averages", systemImage: "calendar")
                    .font(.title.bold())
                    .foregroundStyle(.pink)
                Text("Last 28 Days")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 12)
            
            Chart {
                ForEach (chartData) { weekday in
                    SectorMark(angle: .value ("Average Steps", weekday.value),
                               innerRadius: .ratio(0.618),
                               angularInset: 1)
                    .foregroundStyle(.pink.gradient)
                    .cornerRadius(6)
//                    .annotation(position: .overlay) {
//                        Text(weekday.value, format: .number.notation(.compactName))
//                            .foregroundStyle(.white)
//                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                }
            }

            .frame(height: 240)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemBackground)))
    }
}

#Preview {
    StepPieChart(chartData: ChartMath.averageWeekdayCount(for: HealthMetric.mockData))
}
