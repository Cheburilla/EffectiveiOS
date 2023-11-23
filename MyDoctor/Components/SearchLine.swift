//
//  SearchLine.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 15.11.2023.
//

import Foundation
import SwiftUI

struct SearchLine: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 0) {
                Image("search-normal")
                    .renderingMode(.template)
                    .frame(width: Sizes.search, height: Sizes.search)
                    .foregroundColor(Colors.grayText)
            }
            .padding(0)
            .frame(width: Sizes.search, height: Sizes.search, alignment: .center)
            Text("Search doctor or health issue")
                .font(Fonts.search)
                .foregroundColor(Colors.grayText)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Colors.whiteBG)
        .cornerRadius(Corners.main)
        .accessibilityLabel("Search doctor or health issue")
    }
}

#Preview {
    SearchLine()
}
