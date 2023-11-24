//
//  HomeView.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 20.11.2023.
//

import Foundation
import SwiftUI
struct HomeView : View {
    
    var body: some View {
        
        MainDoctorCard(doctor: doctors[0])
            .padding(.bottom, 20)
        
        SearchLine()
            .padding(.bottom, 24)
        
        HStack(alignment: .top, spacing: 13) {
            ButtonMenu(imageName: "sun", text: String(localized: "Covid 19"))
            ButtonMenu(imageName: "profile-add", text: String(localized: "Doctor"))
            ButtonMenu(imageName: "link", text: String(localized: "Medicine"))
            ButtonMenu(imageName: "hospital", text: String(localized: "Hospital"))
        }
        .padding(.bottom, 32)
        
        Text("Near Doctor")
            .font(Fonts.nearDoctor)
            .foregroundColor(Colors.darkBlack)
            .padding(.bottom, 16)
            .accessibilityLabel("Near Doctor")
        
        DoctorCard(doctor: doctors[1])
        DoctorCard(doctor: doctors[0])
        
        ZStack {}.padding(.bottom, 80)
    }
}
