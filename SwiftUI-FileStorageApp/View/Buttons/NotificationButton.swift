//
//  NotificationButton.swift
//  SwiftUI-FileStorageApp
//
//  Created by Joao Pedro on 02/07/25.
//

import SwiftUI

public struct NotificationButton: View {
    public var body: some View {
        Image(systemName: "bell")
            .font(.system(size: 25, weight: .semibold))
            .foregroundStyle(.white)
    }
}

#Preview {
    NotificationButton()
}
