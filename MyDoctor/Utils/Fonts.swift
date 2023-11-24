//
//  Font+Extensions.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 16.11.2023.
//

import Foundation
import SwiftUI

struct Fonts {
    static let hello = Font.custom("Poppins-Regular", size: 16)
    static let name = Font.custom("Poppins-Bold", size: 20).weight(.bold)
    static let search = Font.custom("Poppins-Regular", size: 15)
    static let workingHours = Font.custom("Poppins-Regular", size: 12)
    static let calendar = Font.custom("Poppins-Regular", size: 12)
    static let doctorName = Font.custom("Poppins-Bold", size: 16).weight(.bold)
    static let doctorSpec = Font.custom("Poppins-Regular", size: 15)
    static let bottomTabBar = Font.custom("Nunito-Bold", size: 14).weight(.bold)
    static let location = Font.custom("Poppins-Regular", size: 15)
    static let nearDoctor = Font.custom("Poppins-SemiBold", size: 16).weight(.semibold)
}
