//
//  DoctorCardTemplate.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 22.11.2023.
//

import Foundation
import SwiftUI

struct DoctorCardTemplate: View {
    var doctor: DoctorInfo
    var nameColor: Color
    var specColor: Color
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            DoctorAvatar(image: doctor.image)
            VStack(alignment: .leading, spacing: 8) {
                Text(String(localized: "Dr. \(doctor.name)"))
                    .font(Fonts.doctorName)
                    .foregroundColor(nameColor)
                Text(doctor.spec)
                    .font(Fonts.doctorSpec)
                    .foregroundColor(specColor)
            }
            .padding(0)
        }.accessibilityLabel(doctor.name + doctor.spec)
    }
}

#Preview {
    DoctorCardTemplate(doctor: doctors[0], nameColor: Colors.darkBlack, specColor: Colors.grayText)
}
