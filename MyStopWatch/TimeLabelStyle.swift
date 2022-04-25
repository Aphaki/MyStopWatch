//
//  TimeLabelStyle.swift
//  MyStopWatch
//
//  Created by Sy Lee on 2022/04/25.
//

import SwiftUI

struct TimeLabelStyle: View {
    var labelText: String
   
    
    var body: some View {
        Text(labelText)
            .font(.largeTitle)
            .padding(20)
            .foregroundColor(.white)
            .cornerRadius(15)
            .frame(width: 90)
    }
}

struct TimeLabelStyle_Previews: PreviewProvider {
    static var previews: some View {
        TimeLabelStyle(labelText: "55")
    }
}
