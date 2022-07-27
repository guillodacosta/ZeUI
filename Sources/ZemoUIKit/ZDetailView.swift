//
//  File.swift
//
//
//  Created by Guillermo Diaz on 7/19/22.
//

import SwiftUI

public struct ZDetailRowView: View {
    private var actionHandler: () -> Void
    private var selectionHandler: ((Bool) -> Void)?
    @State private(set) var isSelected: Bool = false
    private let title: String
    @Environment(\.editMode) var editMode
    
    public init(title: String, _ actionHandler: @escaping () -> Void) {
        self.actionHandler = actionHandler
        self.title = title
    }
    
    public init(title: String, actionHandler: @escaping () -> Void, selectionHandler: ((Bool) -> Void)?) {
        self.actionHandler = actionHandler
        self.selectionHandler = selectionHandler
        self.title = title
    }
    
    public var body: some View {
        HStack {
            Button(action: {
                isSelected = !isSelected
                if let handler = selectionHandler {
                    handler(isSelected)
                }
            }, label: {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "checkmark.circle")
            }).opacity(editMode?.wrappedValue.isEditing == true ? 1 : 0)
            Spacer()
            Button(action: self.actionHandler) {
                Text(self.title)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.leading)
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
            
        }
    }
}
#endif
