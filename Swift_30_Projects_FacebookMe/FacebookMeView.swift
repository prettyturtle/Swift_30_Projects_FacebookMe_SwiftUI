//
//  FacebookMeView.swift
//  Swift_30_Projects_FacebookMe
//
//  Created by yc on 2023/05/01.
//

import SwiftUI

struct FacebookMeView: View {
    
    init() {
        navigationBarColors(background: .mainColor)
    }
    
    var list1: [ListItem] = ListItem.mocks1
    var list2: [ListItem] = ListItem.mocks2
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Group {
                    
                    Section {
                        
                        HStack(spacing: 16) {
                            
                            Image("images")
                                .resizable()
                                .frame(width: 80, height: 80)
                            
                            VStack(spacing: 4) {
                                
                                HStack {
                                    
                                    Text("BayMax")
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Spacer()
                                    
                                } // HStack
                                
                                HStack {
                                    
                                    Text("View your profile")
                                        .font(.system(size: 14))
                                    
                                    Spacer()
                                    
                                } // HStack
                                
                            } // VStack
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray.opacity(0.6))
                            
                        } // HStack
                        
                    } // Section
                    
                    
                    Section {
                        
                        ForEach(list1, id: \.self) { item in
                            
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
                            
                        } // ForEach
                        
                    } // Section
                    
                    Section {
                        
                        let item = ListItem(
                            imageName: nil,
                            title: "Add Favorites..."
                        )
                        
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
                        
                    } header: {
                        
                        Text("FAVORITES")
                        
                    }  // Section
                    
                    Section {
                        
                        ForEach(list2, id: \.self) { item in
                            
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
                            
                        } // ForEach
                        
                    } // Section
                    
                    Section {
                        
                        HStack {
                            
                            Spacer()
                            
                            Text("Log Out")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.red)
                                .padding(.vertical, 12)
                            
                            Spacer()
                            
                        } // HStack
                        
                    } // Section
                    
                } // Group
                .listRowInsets(
                    EdgeInsets(
                        top: 0,
                        leading: 16,
                        bottom: 0,
                        trailing: 16
                    )
                )
                
            } // List
            .listStyle(.grouped)
            
            .navigationTitle("Facebook")
            .navigationBarTitleDisplayMode(.inline)
            
        } // NavigationView
        
    }
    
}

private extension FacebookMeView {
    func navigationBarColors(
        background : UIColor?,
        titleColor : UIColor? = nil,
        tintColor : UIColor? = nil
    ) {
        let navigationAppearance = UINavigationBarAppearance()
        
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = background ?? .clear
        
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
    }
}

struct FacebookMeView_Previews: PreviewProvider {
    static var previews: some View {
        FacebookMeView()
    }
}
