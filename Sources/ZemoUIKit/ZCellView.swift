//
//  ZCell.swift
//  ZemogaUI
//
//  Created by Guillermo Diaz on 7/17/22.
//

import SwiftUI


public struct ZCellData {
    public let content: String
    public let icon: UIImage
    
    public init(content: String, icon: UIImage) {
        self.content = content
        self.icon = icon
    }
}

public struct ZCellView: View {
    
    public let cellData: ZCellData
    @State private var isSelected: Bool

    public var body: some View {
        VStack(alignment: .center) {
            if isSelected {
                Image(uiImage: cellData.icon)
            }
            Text(cellData.content)
                .padding(.all, 1.0)
        }
    }
    
    public init(cellData: ZCellData, isSelected: Bool = false) {
        self.cellData = cellData
        self.isSelected = isSelected
    }
}


#if DEBUG
struct ZCellView_Previews: PreviewProvider {
    static var previews: some View {
        ZCellView(cellData: ZCellData(content: "text lorem ipsum no sabemos unknown thoughs ", icon: UIImage(systemName: "scribble.variable")!))
    }
}
#endif
