//
//  Profile.swift
//  SwiftUI-FileStorageApp
//
//  Created by Joao Pedro on 02/07/25.
//

import Foundation

struct Profile: Hashable, Identifiable {
    let id: UUID = UUID()
    let name: String
    let email: String
    let imageName: String
}

struct MockData {
    
    static var profiles = [
        Profile(name: "João Pedro", email: "ungerfigueiredo@gmail.com", imageName: "profileImage"),
        Profile(name: "Ana Beatriz", email: "ana.bea@email.com", imageName: "profileImage2"),
        Profile(name: "Carlos Henrique", email: "carlos.henrique@email.com", imageName: "profileImage3"),
        Profile(name: "Mariana Silva", email: "mariana.silva@email.com", imageName: "profileImage4")
    ]
}
