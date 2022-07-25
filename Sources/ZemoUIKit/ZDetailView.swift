//
//  File.swift
//
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZDetailRowView: View {
    var action: () -> Void
    var isSelected: Bool
    var title: String
    
    public init(title: String, isSelected: Bool = false, action: @escaping () -> Void) {
        self.action = action
        self.isSelected = isSelected
        self.title = title
    }
    
    public var body: some View {
        Button(action: self.action) {
            HStack {
                if self.isSelected {
                    Image(systemName: "checkmark.circle.fill")
                } else {
                    Spacer(minLength: 18)
                }
                Text(self.title)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.leading)
                Image(systemName: "chevron.right")
            }
            .padding()
        }
    }
}

#if DEBUG
struct ZDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("Selected")
            ZDetailRowView(title: "selected row", isSelected: true) {
                print("title")
            }
            Text("Selected large")
            ZDetailRowView(title: "selected large row with a large large giant large text", isSelected: true) {
                print("title")
            }
            Text("Not selected")
            ZDetailRowView(title: "not selected row") {
                print("title")
            }
            Text("Not selected large")
            ZDetailRowView(title: "not selected large row with a large large giant large text") {
                print("title")
            }
        }
    }
}
#endif
