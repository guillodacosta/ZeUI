//
//  File.swift
//  
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZActivityIndicatorView: UIViewRepresentable {

    public func makeUIView(context: UIViewRepresentableContext<ZActivityIndicatorView>) -> ZActivityIndicatorView {
        UIActivityIndicatorView(style: .large)
    }

    public func updateUIView(_ uiView: ZActivityIndicatorView, context: UIViewRepresentableContext<ZActivityIndicatorView>) {
        uiView.startAnimating()
    }
}
