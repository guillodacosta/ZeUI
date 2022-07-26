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
    @Binding var isEditing: Bool
    @State private(set) var isSelected: Bool = false
    @Binding var title: String
    
    public init(title: Binding<String>, act: @escaping () -> Void) {
        self.actionHandler = act
        self._isEditing = .constant(false)
        self._title = title
    }
    
    public init(title: Binding<String>, showSelectOptions isEditing: Binding<Bool>, act: @escaping () -> Void, selectionHandler: ((Bool) -> Void)?) {
        self.actionHandler = act
        self.selectionHandler = selectionHandler
        self._isEditing = isEditing
        self._title = title
    }
    
    public var body: some View {
        if #available(iOS 15.0, *) {
            let _ = Self._printChanges()
        }
        HStack {
            Button(action: {
                isSelected = !isSelected
                if let handler = selectionHandler {
                    handler(isSelected)
                }
            }, label: {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "checkmark.circle")
            }).opacity($isEditing.wrappedValue ? 1 : 0)
            Button(action: self.actionHandler) {
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
            
        }
    }
}
#endif
