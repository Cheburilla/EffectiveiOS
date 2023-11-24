//
//  MainDoctorCard.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 14.11.2023.
//
import SwiftUI
import Foundation
struct MainDoctorCard: View {
    
    var doctor: DoctorInfo
    
    @EnvironmentObject private var tabState: TabState
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center) {
                DoctorCardTemplate(doctor: doctor, nameColor: .white, specColor: Colors.doctorTitle)
                    .padding(0)
                Spacer()
                Button(action: {
                    withAnimation {
                        tabState.isTapped = true
                    }
                }) {
                    NavigationLink(destination: tabState.selectedView) {
                        Image("arrow-right")
                            .frame(width: Sizes.doctorArrow, height: Sizes.doctorArrow)
                    }
                }
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            Divider()
                .overlay(Rectangle()
                    .stroke(.white.opacity(0.15), lineWidth: 1))
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar")
                        .frame(width: Sizes.underMainDoctorIcons, height: Sizes.underMainDoctorIcons)
                    Text(doctor.workingDays)
                        .font(Fonts.calendar)
                        .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .accessibilityLabel(doctor.workingDays)
                HStack(alignment: .center, spacing: 8) {
                    Image("clock")
                        .frame(width: Sizes.underMainDoctorIcons, height: Sizes.underMainDoctorIcons)
                    Text(doctor.workingHours)
                        .font(Fonts.workingHours)
                        .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .accessibilityLabel(doctor.workingHours)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding(20)
        .frame(alignment: .top)
        .background(Colors.main)
        .cornerRadius(Corners.main)
    }
}

#Preview {
    MainDoctorCard(doctor: doctors[0])
}
