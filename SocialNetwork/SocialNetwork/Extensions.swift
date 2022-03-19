//
//  Extensions.swift
//  SocialNetwork
//
//  Created by Daniel Pustotin on 13.03.2022.
//

import Foundation
import SwiftUI

extension View {
    func SNButtonStyle() -> some View {
        self
            .font(.title2)
            .foregroundColor(.black)
            .padding()
            .background {
                Color.yellow
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

extension Animation {
    static func SNSpring() -> Animation {
        .spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.9)
    }
}
