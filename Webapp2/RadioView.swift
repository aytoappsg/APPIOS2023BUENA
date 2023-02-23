//
//  RadioView.swift
//  Webapp2
//
//  Created by muka muka on 21/2/23.
//

import Foundation
import AVFoundation
import SwiftUI


struct RadioView: View {
    var player: AVPlayer
    
    var body: some View {
        ZStack {
            Color.black // Fondo negro
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "radio.png"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 350)
                    
                    Text("Radio Isla Cristina")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .padding(.top, 70)
                    
                    HStack {
                        Button(action: {
                            player.play()
                        }) {
                            Image(systemName: "play.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.pink)
                        }
                        .frame(width: 80, height: 80)
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(40)
                        
                        Button(action: {
                            player.pause()
                        }) {
                            Image(systemName: "pause.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.pink)
                        }
                        .frame(width: 80, height: 80)
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(40)
                    }
                    .padding(.top, 50)
                }
                .padding(.vertical, 50)
                .padding(.horizontal, 20)
                .background(Color.white.opacity(0.2))
                .cornerRadius(20)
                
                Spacer()
            }
        }
    }
}

struct radioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView(player: player)
    }
}
