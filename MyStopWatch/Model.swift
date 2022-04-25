//
//  Model.swift
//  MyStopWatch
//
//  Created by Sy Lee on 2022/04/25.
//

import Foundation

class Model: ObservableObject {
    @Published var rawTime = 0.00
    
    var timer = Timer()
    
    func playStopWatch() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { _ in
            self.rawTime += 0.01
        })
    }
    func pauseStopWatch() {
        timer.invalidate()
    }
    func resetStopWatch() {
        timer.invalidate()
        self.rawTime = 0.00
    }
}
