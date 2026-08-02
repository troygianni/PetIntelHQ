import SwiftUI

struct MicrochipView: View {

    @State private var microchipNumber = ""
    @State private var microchipCompany = ""
    @State private var showMedications = false

    var body: some View {

        VStack(spacing: 30) {

            Spacer()

            Text("Is your pet microchipped?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("Optional")
                .font(.title3)
                .foregroundStyle(.secondary)

            TextField("Microchip Number", text: $microchipNumber)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            TextField(
                "Microchip Company (HomeAgain, AKC Reunite, etc.)",
                text: $microchipCompany
            )
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)

            Spacer()

            Button {

                showMedications = true

            } label: {

                Text("Continue")
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
        .navigationDestination(isPresented: $showMedications) {

            MedicationsView()

        }

    }

}

#Preview {

    NavigationStack {

        MicrochipView()

    }

}
