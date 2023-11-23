//
//  GreetingHeader.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 15.11.2023.
//

import Foundation
import SwiftUI

struct GreetingHeader: View {
    var user: UserInfo
    
    @EnvironmentObject private var tabState: TabState
    
    var body: some View {
        
        HStack() {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello,")
                    .font(Fonts.hello)
                    .foregroundColor(Colors.grayText)
                Text(String(localized: "Hi \(user.name)"))
                    .font(Fonts.name)
                    .foregroundColor(Colors.greeting)
            }
            Spacer()
            Button(action: {
                withAnimation {
                    tabState.isTapped = true
                }
            }) {
                NavigationLink(destination: tabState.selectedView) {
                    Image(user.image)
                        .resizable()
                        .frame(width: Sizes.avatar, height: Sizes.avatar)
                }
            }
            
        }
        .padding(0)
    }
}

#Preview {
    GreetingHeader(user: user)
}
