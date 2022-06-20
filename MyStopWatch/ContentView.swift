//
//  ContentView.swift
//  MyStopWatch
//
//  Created by Sy Lee on 2022/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = Model()
    
    var miSeconds: Int {
        Int(vm.rawTime * 100) % 100
    }
    var seconds: Int {
        Int(vm.rawTime * 100) / 100 % 60
    }
    var minute: Int {
        Int(vm.rawTime / 60)
    }
    @State var isPlaying = false
    var body: some View {
        ZStack {
            RadialGradient(colors: [.orange, .white], center: .center, startRadius: 1, endRadius: 500)
                .ignoresSafeArea()
            
            VStack {
                HStack(spacing: 0) {
                    TimeLabelStyle(labelText: "\(minute)")
                    Text(":")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    TimeLabelStyle(labelText: seconds < 10 ? "0" + "\(seconds)" : "\(seconds)")
                    Text(".")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    TimeLabelStyle(labelText: miSeconds < 10 ? "0" + "\(miSeconds)" : "\(miSeconds)")
                } // HStack
                
                HStack{
                    if isPlaying {
                        Button {
                            vm.pauseStopWatch()
                            self.isPlaying = false
                        } label: {
                            ButtonStyle(title: "pause")
                        }
                    } else {
                        Button {
                            vm.playStopWatch()
                            self.isPlaying = true
                        } label: {
                            ButtonStyle(title: "play")
                        }
                        
                    }
                    Button {
                        vm.resetStopWatch()
                        self.isPlaying = false
                    } label: {
                        ButtonStyle(title: "Reset")
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
