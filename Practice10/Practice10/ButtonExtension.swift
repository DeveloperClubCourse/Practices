//
//  ButtonExtension.swift
//  Practice10
//
//  Created by Daniel Pustotin on 10.03.2022.
//

import Foundation
import SwiftUI

extension View {
    func myStyle() -> some View {
        self
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .background(content: { Color.black })
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
