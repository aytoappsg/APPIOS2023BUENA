//
//  RadioApp.swift
//  Radio
//
//  Created by muka muka on 15/2/23.
//

import SwiftUI
import AVFoundation

struct RadioApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

let player = AVPlayer(url: NSURL(string: "https://radioserver11.profesionalhosting.com/proxy/pkg81947b?mp=/stream")! as URL)
