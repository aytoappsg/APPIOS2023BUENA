import SwiftUI
import WebKit
import UIKit
import AVFoundation

// Punto de entrada principal de la aplicación
@main
struct MyApp: App {
    var body: some Scene {
        // Definición de la escena principal de la aplicación
        WindowGroup {
            ContentView()
        }
    }
}

// Vista principal de la aplicación

    /*struct Sidebar: View {
            var body: some View {
                List {
                    NavigationLink(
                        destination:  radioView(player: player)
                    ) {
                        Label("Radio", systemImage: "globe")
                    }
                    NavigationLink(
                        destination: Links()
                    ) {
                        Label("Links", systemImage: "mappin.and.ellipse")
                    }
                    NavigationLink(
                        destination: WebView(url: URL(string: "https://wp.islacristina.org/category/espana/")!)
                    ) {
                        Label("España", systemImage: "flag")
                    }
                    NavigationLink(
                        destination: WebView(url: URL(string: "https://wp.islacristina.org/category/deportes/")!)
                    ) {
                        Label("Deportes", systemImage: "sportscourt")
                    }
                    NavigationLink(
                        destination: WebView(url: URL(string: "https://wp.islacristina.org/category/cultura/")!)
                    ) {
                        Label("Cultura", systemImage: "book")
                    }
                    NavigationLink(
                        destination: WebView(url: URL(string: "https://wp.islacristina.org/category/opinion/")!)
                    ) {
                        Label("Opinión", systemImage: "text.bubble")
                    }
                    NavigationLink(
                        destination: WebView(url: URL(string: "https://wp.islacristina.org/category/reportajes/")!)
                    ) {
                        Label("Reportajes", systemImage: "doc.plaintext")
                    }
                    NavigationLink(
                        destination: WebView(url: URL(string: "https://wp.islacristina.org/category/actualidad/")!)
                    ) {
                        Label("Actualidad", systemImage: "newspaper")
                    }
                }
                .listStyle(SidebarListStyle())
                .frame(minWidth: 250)
                .edgesIgnoringSafeArea(.all)
                .position(x:190, y:-165)
            }
        }*/
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        

