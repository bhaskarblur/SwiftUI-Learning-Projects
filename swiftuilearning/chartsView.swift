//
//  chartsView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 30/10/23.
//

import SwiftUI
import SwiftUICharts

struct chartsView: View {
    var body: some View {
        NavigationView(content: {
            
            VStack {
                LineView(data: [12, 24, 36, 48, 60], title: "Line Chart")
                Spacer()
                LineChartView(data: [20,16,13, 18], title: "Line Chart")
                
                Spacer()
                BarChartView(data: ChartData(values: [
                    ("Jan", 6),
                    ("Feb", 9),
                    ("Mar", 12),
                    ("May", 15),
                    ("Jun", 18),
                ]), title: "Bar Chart")
                
                Spacer()
                
                PieChartView(data: [22, 36, 48, 42, 38], title: "Pie Chart")
                Spacer()
            }
            
        }).navigationTitle("Charts")
    }
}

#Preview {
    chartsView()
}
