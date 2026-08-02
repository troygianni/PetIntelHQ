import SwiftUI

struct FavoriteThingView: View {

    @State private var favoriteThing = ""
    @State private var showAllergies = false

    var body: some View {

        VStack(spacing: 35) {

            Spacer()

            Text("What's your pet's favorite toy or treat?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("Optional")
                .font(.title3)
                .foregroundStyle(.secondary)

            TextField("Ex: Tennis Ball, Freeze-Dried Chicken, Belly Rubs...", text: $favoriteThing)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Spacer()

            Button {

                showAllergies = true

            } label: {

                Text("Continue")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(
                        Color(red: 111/255,
                              green: 174/255,
                              blue: 219/255)
                    )
                    .clipShape(Capsule())

            }

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $showAllergies) {

            AllergiesView()

        }

    }
}

#Preview {

    NavigationStack {

        FavoriteThingView()

    }

}
