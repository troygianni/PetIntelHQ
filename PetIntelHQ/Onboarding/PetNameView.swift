import SwiftUI

struct PetNameView: View {

    @State private var petName = ""
    @State private var showSpecies = false

    var body: some View {

        VStack(spacing: 40) {

            Spacer()

            Text("Let's meet your pet")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("What's your pet's name?")
                .font(.title3)
                .foregroundStyle(.secondary)

            TextField("Enter your pet's name", text: $petName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Spacer()

            Button {

                showSpecies = true

            } label: {

                Text("Continue")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(
                        petName.isEmpty
                        ? Color.gray
                        : Color(red: 111/255,
                                green: 174/255,
                                blue: 219/255)
                    )
                    .clipShape(Capsule())

            }
            .disabled(petName.isEmpty)

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $showSpecies) {

            SpeciesView()

        }

    }
}

#Preview {
    NavigationStack {
        PetNameView()
    }
}
