import SwiftUI

struct DietView: View {

    @State private var diet = ""
    @State private var showMicrochip = false

    var body: some View {

        VStack(spacing: 35) {

            Spacer()

            Text("What does your pet eat?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("Optional")
                .font(.title3)
                .foregroundStyle(.secondary)

            TextField("Ex: Purina Pro Plan, Hill's, Homemade Diet...", text: $diet)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Spacer()

            Button {

                showMicrochip = true

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
        .navigationDestination(isPresented: $showMicrochip) {

            MicrochipView()

        }

    }
}

#Preview {

    NavigationStack {

        DietView()

    }

}
