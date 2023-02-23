//
//  WebView.swift
//  Webapp2
//
//  Created by muka muka on 21/2/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let url: URL

    // Método que se llama una sola vez para crear una instancia de la vista web
    func makeUIView(context: Context) -> WKWebView {
        // Configuración del web view
        let configuration = WKWebViewConfiguration()
        let userContentController = WKUserContentController()

        // Cargar el archivo JavaScript desde el bundle de la aplicación
        let scriptURL = Bundle.main.url(forResource: "margen", withExtension:"js")!
        let script = try! String(contentsOf: scriptURL)

        // Configurar el usuario de contenido para inyectar el archivo JavaScript
        let scriptContentController = WKUserScript(source: script, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        userContentController.addUserScript(scriptContentController)
        configuration.userContentController = userContentController

        // Crear la instancia del web view
        let webView = WKWebView(frame: .zero, configuration: configuration)

        // Cargar la URL solicitada
        let request = URLRequest(url: url)
        webView.load(request)

        // Devolver la instancia del web view creada
        return webView
    }

    // Método que se llama cada vez que la vista necesita ser actualizada
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // Volver a cargar la URL solicitada
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
