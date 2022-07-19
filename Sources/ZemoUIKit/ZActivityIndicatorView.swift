//
//  File.swift
//  
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZActivityIndicatorView: UIViewRepresentable {

    public func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: .large)
    }

    public func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        uiView.startAnimating()
    }
}
