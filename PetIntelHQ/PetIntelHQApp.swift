import SwiftUI
import SwiftData

@main
struct PetIntelHQApp: App {

    var body: some Scene {

        WindowGroup {

            ContentView()

        }
        .modelContainer(for: Pet.self)

    }

}
