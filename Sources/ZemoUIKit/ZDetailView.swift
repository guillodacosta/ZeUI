//
//  File.swift
//  
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZDetailRowView: View {
    public let leftLabel: Text
    public let rightLabel: Text
    
    public init(leftLabel: Text, rightLabel: Text) {
        self.leftLabel = leftLabel
        self.rightLabel = rightLabel
    }
    
    public init(leftLabel: Text, rightLabel: LocalizedStringKey) {
        self.leftLabel = leftLabel
        self.rightLabel = Text(rightLabel)
    }
    
    public var body: some View {
        HStack {
            leftLabel
                .font(.headline)
            Spacer()
            rightLabel
                .font(.callout)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
    }
}

#if DEBUG
struct ZDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        ZDetailRowView(leftLabel: Text("Post x"), rightLabel: Text("info"))
            .previewLayout(.fixed(width: 375, height: 40))
    }
}
#endif
