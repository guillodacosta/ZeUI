//
//  ZErrorView.swift
//  
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZErrorView: View {
    public let error: Error
    public let retryAction: () -> Void
    
    public var body: some View {
        VStack {
            Text("An Error Occured")
                .font(.title)
            Text(error.localizedDescription)
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40).padding()
            Button(action: retryAction, label: { Text("Retry").bold() })
        }
    }
}

#if DEBUG
struct ZErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ZErrorView(error: NSError(domain: "", code: 0, userInfo: [
            NSLocalizedDescriptionKey: "Something went wrong"]),
                  retryAction: { })
    }
}
#endif
