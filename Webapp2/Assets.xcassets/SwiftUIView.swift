//
//  SwiftUIView.swift
//  Webapp2
//
//  Created by muka muka on 21/2/23.
//

import SwiftUI
import WebKit
struct Links: View {
    var body: some View {
        ZStack {
                   Color.black.edgesIgnoringSafeArea(.all)
                   VStack(spacing: 20) {
                       Button(action: {
                           if let url = URL(string: "https://wp.islacristina.org/") {
                               UIApplication.shared.open(url)
                           }
                       }) {
                           HStack {
                               Image(systemName: "globe")
                                   .font(.title)
                                   .foregroundColor(.white)
                               Text("Sitio web")
                                   .font(.headline)
                                   .foregroundColor(.white)
                           }
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.gray.opacity(0.8))
                           .cornerRadius(10)
                       }
                       
                       Button(action: {
                           if let url = URL(string: "https://www.facebook.com/ayuntamientodeislacristina") {
                               UIApplication.shared.open(url)
                           }
                       }) {
                           HStack {
                               Image(systemName: "f.cursive")
                                   .font(.title)
                                   .foregroundColor(.white)
                               Text("Facebook")
                                   .font(.headline)
                                   .foregroundColor(.white)
                           }
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.gray.opacity(0.8))
                           .cornerRadius(10)
                       }
                       
                       Button(action: {
                           if let url = URL(string: "https://www.instagram.com/aytoislacristina/?hl=es/") {
                               UIApplication.shared.open(url)
                           }
                       }) {
                           HStack {
                               Image(systemName: "camera")
                                   .font(.title)
                                   .foregroundColor(.white)
                               Text("Instagram")
                                   .font(.headline)
                                   .foregroundColor(.white)
                           }
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.gray.opacity(0.8))
                           .cornerRadius(10)
                       }
                       
                       Button(action: {
                           if let url = URL(string: "https://twitter.com/ayto_ic") {
                               UIApplication.shared.open(url)
                           }
                       }) {
                           HStack {
                               Image(systemName: "t.circle.fill")
                                   .font(.title)
                                   .foregroundColor(.white)
                               Text("Twitter")
                                   .font(.headline)
                                   .foregroundColor(.white)
                           }
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.gray.opacity(0.8))
                           .cornerRadius(10)
                       }
                   }
                   .padding()
               }
           }
}
struct Previews_SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Links()
    }
}
