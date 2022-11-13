//
//  Text+Extension.swift
//  WhiteNoises
//
//  Created by Murat on 12.11.2022.
//

import Foundation
import SwiftUI

private struct PrimaryLabel: ViewModifier {
    var fontName = String()
    var size = Double()
    var color: Color = .white
    func body(content: Content) -> some View {
        content
            .fontWeight(.black)
            .foregroundColor(color)
            .font(.custom(fontName, size: size))
    }
}
extension Text {
    func makePrimaryLabel(size: Double = 20, color: Color = .white, fontName: String = FontsManager.LeckerliOne.regular) -> some View {
        ModifiedContent(content: self, modifier: PrimaryLabel(fontName: fontName, size: size, color: color))
    }
}
