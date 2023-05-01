//
//  ListCell.swift
//  Swift_30_Projects_FacebookMe
//
//  Created by yc on 2023/05/01.
//

import SwiftUI

struct ListCell: View {
    
    @Binding var item: ListItem
    
    var body: some View {
        
        HStack(spacing: 16) {
            
            Image(item.imageName ?? "fb_placeholder")
                .resizable()
                .frame(width: 30, height: 30)
            
            Text(item.title)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(item.imageName == nil ? .blue : .black)
            
            Spacer()
            
            if let _ = item.imageName {
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray.opacity(0.6))
            }
            
        } // HStack
        .padding(.vertical, 12)
        
    }
    
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(item: .constant(.mocks1.first!))
    }
}
