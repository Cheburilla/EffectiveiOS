//
//  DoctorCard.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 16.11.2023.
//

import Foundation
import SwiftUI
struct DoctorCard: View {
    var doctor: DoctorInfo
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HStack(alignment: .center) {
                DoctorCardTemplate(doctor: doctor, nameColor: Colors.darkBlack, specColor: Colors.grayText)
                    .padding(0)
                Spacer()
                HStack(alignment: .center, spacing: 8) {
                    Image("location")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Colors.grayText)
                        .frame(width: Sizes.location, height: Sizes.location)
                    Text(doctor.location)
                        .font(Fonts.location)
                        .foregroundColor(Colors.grayText)
                }
                .padding(0)
                .accessibilityLabel(doctor.location)
            }
            .padding(0)
            .frame(alignment: .center)
            Divider()
                .overlay(Rectangle()
                    .stroke(Colors.divider.opacity(0.15), lineWidth: 1))
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 6) {
                    Image("clock")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: Sizes.underDoctorIcons, height: Sizes.underDoctorIcons)
                        .foregroundColor(Colors.rating)
                    Text(doctor.rating)
                        .font(Fonts.calendar)
                        .foregroundColor(Colors.rating)
                        .accessibilityLabel(doctor.rating)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack(alignment: .center, spacing: 6) {
                    Image("clock")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: Sizes.underDoctorIcons, height: Sizes.underDoctorIcons)
                        .foregroundColor(Colors.main)
                    Text(doctor.openHour)
                        .font(Fonts.workingHours)
                        .foregroundColor(Colors.main)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .accessibilityLabel(doctor.openHour)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(Corners.main)
    }
}

#Preview {
    DoctorCard(doctor: doctors[1])
}
