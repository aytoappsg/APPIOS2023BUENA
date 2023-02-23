//
//  ContentView.swift
//  Radio
//
//  Created by muka muka on 15/2/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    let url = URL(string: "https://wp.islacristina.org/")!
        @State private var isShowingSidebar = false
        
        var body: some View {
            NavigationView {
                WebView(url: url)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .toolbar {
                        ToolbarItem(placement: .navigation) {
                            Button(action: { isShowingSidebar.toggle() }) {
                                Image(systemName: "sidebar.left")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .navigationViewStyle(StackNavigationViewStyle())
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarTitle("Menú")
                    .foregroundColor(.white)
                    .overlay(
                        Group {
                            if isShowingSidebar {
                                Sidebar()
                                    .frame(minWidth: 250)
                                    .edgesIgnoringSafeArea(.all)
                                    .background(Color.black)
                                    .transition(.move(edge: .leading))
                                    .foregroundColor(.white)
                            }
                        }
                    )
                    .background(Color.black)
            }
            .accentColor(.white)
        }
}
/*struct Sidebar: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            List {
                NavigationLink(
                    destination:  radioView(player: player)
                ) {
                    Label("Radio", systemImage: "globe")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: Links()
                ) {
                    Label("Links", systemImage: "mappin.and.ellipse")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: WebView(url: URL(string: "https://wp.islacristina.org/category/espana/")!)
                ) {
                    Label("España", systemImage: "flag")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: WebView(url: URL(string: "https://wp.islacristina.org/category/deportes/")!)
                ) {
                    Label("Deportes", systemImage: "sportscourt")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: WebView(url: URL(string: "https://wp.islacristina.org/category/cultura/")!)
                ) {
                    Label("Cultura", systemImage: "book")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: WebView(url: URL(string: "https://wp.islacristina.org/category/opinion/")!)
                ) {
                    Label("Opinión", systemImage: "text.bubble")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: WebView(url: URL(string: "https://wp.islacristina.org/category/reportajes/")!)
                ) {
                    Label("Reportajes", systemImage: "doc.plaintext")
                        .foregroundColor(.white)
                }
                NavigationLink(
                    destination: WebView(url: URL(string: "https://wp.islacristina.org/category/actualidad/")!)

                ) {
                    Label("Actualidad", systemImage: "newspaper")
                        .foregroundColor(.white)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(.white)
        }
    }
}*/
struct Sidebar: View {
    var body: some View {
            ScrollView {
                VStack(spacing: 20){
                    Spacer()
                    Text("prueba")
                
                VStack(alignment: .center, spacing: 20) {
                    Button(action: {
                        // Añadir funcionalidad al botón
                    }) {
                        NavigationLink(
                            destination:  RadioView(player: player)
                        ) {
                            Label("Radio", systemImage: "globe")
                        }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                            .background(Color.gray.opacity(0.7))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // Añadir funcionalidad al botón
                    }) {
                        NavigationLink(
                            destination: Links()
                        ) {
                            Label("Enlaces de interes", systemImage: "link")
                        }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                            .background(Color.gray.opacity(0.7))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // Añadir funcionalidad al botón
                    }) {
                        Text("Botón 3")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                            .background(Color.gray.opacity(0.7))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // Añadir funcionalidad al botón
                    }) {
                        Text("Botón 4")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                            .background(Color.gray.opacity(0.7))
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                        .frame(height: 50)
                }
                .padding(.top, 200) // Agregar un padding al final de la VStack
                .padding(.horizontal, 20)
            }
            .background(Color.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
    }
}

struct SidebarButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(Color.gray.opacity(configuration.isPressed ? 0.5 : 0))
            .cornerRadius(10)
    }
}



