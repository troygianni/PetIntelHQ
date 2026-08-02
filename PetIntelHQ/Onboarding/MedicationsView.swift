import SwiftUI

struct MedicationsView: View {

    @State private var medications = ""
    @State private var finishSetup = false

    var body: some View {

        VStack(spacing: 30) {

            Spacer()

            Text("Is your pet taking any medications?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("Optional")
                .font(.title3)
                .foregroundStyle(.secondary)

            Text("You can separate multiple medications with commas.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            TextField(
                "Ex: Apoquel, Carprofen, Insulin",
                text: $medications
            )
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)

            Spacer()

            Button {

                finishSetup = true

            } label: {

                Text("Finish Setup")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(
                        Color(
                            red: 111/255,
                            green: 174/255,
                            blue: 219/255
                        )
                    )
                    .clipShape(Capsule())

            }

        }
        .padding()
        .navigationBarBackButtonHidden(true)

    }

}

#Preview {

    NavigationStack {

        MedicationsView()

    }

}
