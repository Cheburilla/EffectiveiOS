//
//  ButtonMenu.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 16.11.2023.
//

import Foundation
import SwiftUI

struct ButtonMenu: View {
    @EnvironmentObject private var tabState: TabState
    var imageName: String
    var text: String
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                tabState.isTapped = true
            }
        }) {
            NavigationLink(destination: tabState.selectedView) {
                VStack(alignment: .center, spacing: 8) {
                    Image(self.imageName)
                        .renderingMode(.template)
                        .frame(width: Sizes.buttonMenu, height: Sizes.buttonMenu)
                        .foregroundColor(Colors.main)
                        .padding(Paddings.buttonMenu)
                        .background(Colors.whiteBG)
                        .clipShape(Circle())
                    Text(text)
                        .font(Fonts.search)
                        .foregroundColor(Colors.grayText)
                }
            }
            
        }.accessibilityLabel(text)
    }
}
