//
//  DoctorAvatar.swift
//  MyDoctor
//
//  Created by Александр Сафронов on 22.11.2023.
//

import Foundation
import SwiftUI

struct DoctorAvatar: View {
    var image: String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: Sizes.doctorAvatar, height: Sizes.doctorAvatar)
                .clipShape(Circle())
            Image(image)
                .resizable()
                .frame(width: Sizes.doctorAvatar, height: Sizes.doctorAvatar)
                .clipShape(Circle())
        }
    }
}

#Preview {
    DoctorAvatar(image: "image_doctor2")
}
