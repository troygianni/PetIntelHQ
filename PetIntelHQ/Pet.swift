import Foundation
import SwiftData

@Model
class Pet {

    var name: String = ""
    var species: String = ""
    var breed: String = ""

    var birthday: Date?
    var estimatedAge: String = ""

    var favoriteThing: String = ""

    var allergies: String = ""

    var diet: String = ""

    var microchipNumber: String = ""
    var microchipCompany: String = ""

    var photo: Data?

    var medications: [String] = []

    init() { }

}
