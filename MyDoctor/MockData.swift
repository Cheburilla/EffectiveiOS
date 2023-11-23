//
//  MockData.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 20.11.2023.
//

import Foundation
import SwiftUI

struct TabItem {
    let id: Int
    let title: String
    let icon: String
    let view: AnyView
}

let tabs: [TabItem] = [
    TabItem(id: 0, title: String(localized: "Home"), icon: "Home", view: AnyView(HomeView())),
    TabItem(id: 1, title: String(localized: "Cals"), icon: "calendar-2", view: AnyView(EmptyView())),
    TabItem(id: 2, title: String(localized: "Chat"), icon: "message", view: AnyView(EmptyView())),
    TabItem(id: 3, title: String(localized: "Me"), icon: "profile", view: AnyView(EmptyView()))
]

struct DoctorInfo {
    let name: String
    let spec: String
    let workingDays: String
    let workingHours: String
    let location: String
    let rating: String
    let openHour: String
    let image: String
}

let doctors: [DoctorInfo] = [
    DoctorInfo(name: "Imran Syahir", spec: "General Doctor", workingDays: "Sunday, 12 June", workingHours: "11:00 - 12:00 AM", location: "1.2 KM", rating: "4.8 (120 Reviews)", openHour: "Open at 17:00", image: "image_doctor2"),
    DoctorInfo(name: "Joseph Brostito", spec: "Dental Specialist", workingDays: "Sunday, 12 June", workingHours: "11:00 - 12:00 AM", location: "1.2 KM", rating: "4.8 (120 Reviews)", openHour: "Open at 17:00", image: "image_doctor1")
]

struct UserInfo {
    let name: String
    let image: String
}

let user: UserInfo = UserInfo(name: "James", image: "Frame")
