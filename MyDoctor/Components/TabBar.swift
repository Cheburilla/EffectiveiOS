//
//  tabbar.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 20.11.2023.
//

import Foundation
import SwiftUI

struct TabBar: View {
    
    @EnvironmentObject private var tabState: TabState
    @Binding var selectedTab: Int
    
    init(selectedTab: Binding<Int>){
        self._selectedTab = selectedTab
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            ForEach(tabs, id: \.id) { tab in
                Button(action: {
                    withAnimation {
                        selectedTab = tab.id
                        tabState.isTapped = false
                    }
                }) {
                    NavigationLink(destination: tabs[selectedTab].view) {
                        HStack(alignment: .center, spacing: 8) {
                            Image(tab.icon)
                                .renderingMode(.template)
                                .font(.title)
                                .frame(width: Sizes.tabIcon, height: Sizes.tabIcon)
                                .foregroundColor(selectedTab == tab.id ? Colors.bottomTabBar : Colors.grayText)
                            
                            if selectedTab == tab.id {
                                Text(tab.title)
                                    .font(Fonts.bottomTabBar)
                                    .foregroundColor(Colors.bottomTabBar)
                                    .frame(width: 39)
                            }
                        }
                        .padding(12)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Colors.bottomTabBar.opacity(0.1))
                        .cornerRadius(Corners.main)
                    }
                }.accessibilityLabel(tab.title)
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .frame(alignment: .center)
        .background(.white)
        
    }
}
