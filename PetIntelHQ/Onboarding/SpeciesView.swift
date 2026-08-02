import SwiftUI

struct SpeciesView: View {

    @State private var selectedSpecies = ""
    @State private var showBreed = false

    let species = [
        "Dog",
        "Cat",
        "Exotic"
    ]

    var body: some View {

        VStack(spacing: 30) {

            Spacer()

            Text("What type of pet is this?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Spacer()

            ForEach(species, id: \.self) { pet in

                Button {

                    selectedSpecies = pet

                } label: {

                    HStack {

                        Text(pet)
                            .font(.title3)

                        Spacer()

                        if selectedSpecies == pet {

                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(
                                    Color(red: 111/255,
                                          green: 174/255,
                                          blue: 219/255)
                                )

                        }

                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                }
                .foregroundStyle(.primary)

            }

            Spacer()

            Button {

                showBreed = true

            } label: {

                Text("Continue")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(
                        selectedSpecies.isEmpty
                        ? Color.gray
                        : Color(red: 111/255,
                                green: 174/255,
                                blue: 219/255)
                    )
                    .clipShape(Capsule())

            }
            .disabled(selectedSpecies.isEmpty)

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $showBreed) {

            BreedView()

        }

    }

}

#Preview {

    NavigationStack {

        SpeciesView()

    }

}
