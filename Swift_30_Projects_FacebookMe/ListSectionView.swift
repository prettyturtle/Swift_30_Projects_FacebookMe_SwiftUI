//
//  ListSectionView.swift
//  Swift_30_Projects_FacebookMe
//
//  Created by yc on 2023/05/01.
//

import SwiftUI

struct ListSectionView: View {
    
    @Binding var listSection: ListSection
    
    var body: some View {
        
        Section {
            
            ForEach($listSection.listItems, id: \.self) { item in
                
                ListCell(item: item)
                
            } // ForEach
            
        } header: {
            
            if let header = listSection.header {
                Text(header)
            }
            
        } // Section
        
    }
    
}

struct ListSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ListSectionView(listSection: .constant(ListSection.mock.first!))
    }
}
