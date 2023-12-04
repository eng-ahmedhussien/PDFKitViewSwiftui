//
//  PDFKitView.swift
//  AlDwaaNewApp
//
//  Created by Omar Adel on 08/11/2023.
//

import PDFKit
import SwiftUI

struct PDFKitView: View {
    var url: URL?
    var data: Data?
    
    
    
    var body: some View {
        PDFKitRepresentedView(url: url, data: data)
            .navigationBarWithLogo()
    }
}

struct PDFKitRepresentedView: UIViewRepresentable {
    let url: URL?
    var data: Data?
//    init(_ url: URL?, fromData: Data?) {
//        if let url = url {
//            self.url = url
//        }
//        if let data = fromData {
//            self.data = data
//        }
//    }

    func makeUIView(context: UIViewRepresentableContext<PDFKitRepresentedView>) -> PDFKitRepresentedView.UIViewType {
        let pdfView = PDFView()
        if let url = url {
            pdfView.document = PDFDocument(url: url)
        }
        if let data = data {
            pdfView.document = PDFDocument(data: data)
        }
        pdfView.autoScales = true
        return pdfView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDFKitRepresentedView>) {
        // Update the view.
    }
}
