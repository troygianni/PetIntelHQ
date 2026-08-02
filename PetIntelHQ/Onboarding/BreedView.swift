import SwiftUI

struct BreedView: View {

    @State private var breed = ""
    @State private var showPhoto = false

    var body: some View {

        VStack(spacing: 40) {

            Spacer()

            Text("What breed is your pet?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("If you're not sure, you can always update it later.")
                .font(.title3)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            TextField("Enter breed", text: $breed)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Spacer()

            Button {

                showPhoto = true

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

            .navigationDestination(isPresented: $showPhoto) {

                PhotoView()

            }

        }
        .padding()
        .navigationBarBackButtonHidden(true)

    }

}

#Preview {

    NavigationStack {

        BreedView()

    }

}
