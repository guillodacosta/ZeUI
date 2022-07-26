//
//  File.swift
//
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZDetailRowView: View {
    var action: () -> Void
    @State private(set) var isEditing: Bool
    @State private(set) var isSelected: Bool
    var title: String
    
    public init(title: String, action: @escaping () -> Void) {
        self.action = action
        self.isEditing = false
        self.isSelected = false
        self.title = title
    }
    
    public func editingMode(isOn: Bool) -> ZDetailRowView {
        self.isEditing = isOn
        return self
    }
    
    public var body: some View {
        if #available(iOS 15.0, *) {
            let _ = Self._printChanges()
        }
        HStack {
            Button(action: {
                isSelected = !isSelected
            }, label: {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "checkmark.circle")
            }).opacity(isEditing ? 1 : 0)
            Button(action: self.action) {
                HStack {
                    Text(self.title)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.leading)
                    Image(systemName: "chevron.right")
                }
            }
        }
        .padding()
    }
}

extension Button {
    
    @ViewBuilder public func isHidden(_ hidden: Bool) -> some View {
        hidden ? AnyView(self).hidden() as! AnyView : AnyView(self)
    }
}

#if DEBUG
struct ZDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("Editing").font(.title)
            ZDetailRowView(title: "selected row") {
                print("title")
            }.editingMode(isOn: true)
            Text("Editing large").font(.title)
            ZDetailRowView(title: "selected large row with a large large giant large text") {
                print("title")
            }.editingMode(isOn: false)
            Text("Not selected").font(.title)
            ZDetailRowView(title: "not selected row") {
                print("title")
            }.editingMode(isOn: false)
            Text("Not selected large").font(.title)
            ZDetailRowView(title: "not selected large row with a large large giant large text") {
                print("title")
            }
        }
    }
}
#endif
