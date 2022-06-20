//
//  ButtonStyle.swift
//  MyStopWatch
//
//  Created by Sy Lee on 2022/04/26.
//

import SwiftUI

struct ButtonStyle: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 30, weight: .thin, design: .rounded))
            .padding()
            .foregroundColor(.white)
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle(title: "pause")
    }
}
