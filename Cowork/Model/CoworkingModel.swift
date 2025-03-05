//
//  CoworkingModel.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 05.03.2025.
//
import Foundation

struct CoworkingSpace: Identifiable, Codable {
    let id: UUID
    let name: String
    let description: String
    let address: String
    let pricePerHour: Double
    let rating: Double
    let comments: [Comment]
    let openingTime: String
    let closingTime: String
    let rooms: [Room]
    let amenities: [String]
    let facilities: [String]
    let isAvailable: Bool
    let photos: [String]
}

struct Comment: Identifiable, Codable {
    let id: UUID
    let username: String
    let text: String
    let rating: Double
}

struct Room: Identifiable, Codable {
    let id: UUID
    let name: String
    let capacity: Int
    let pricePerHour: Double
    let isAvailable: Bool
}

extension CoworkingSpace {
    static let example = CoworkingSpace(
        id: UUID(),
        name: "Cozy Coworking Space",
        description: "A modern and comfortable coworking space with all the amenities you need.",
        address: "123 Main Street, Cityville",
        pricePerHour: 10.0,
        rating: 4.8,
        comments: [
            Comment(id: UUID(), username: "Alex", text: "Great place to work!", rating: 5.0),
            Comment(id: UUID(), username: "Jordan", text: "Nice atmosphere, but the Wi-Fi could be faster.", rating: 4.0)
        ],
        openingTime: "08:00",
        closingTime: "20:00",
        rooms: [
            Room(id: UUID(), name: "Meeting Room A", capacity: 6, pricePerHour: 20.0, isAvailable: true),
            Room(id: UUID(), name: "Private Office", capacity: 1, pricePerHour: 15.0, isAvailable: false)
        ],
        amenities: ["Wi-Fi", "Coffee", "Printing Services"],
        facilities: ["Parking", "Air Conditioning"],
        isAvailable: true,
        photos: ["coworking1.jpg", "coworking2.jpg"]
    )
}
