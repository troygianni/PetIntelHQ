import SwiftUI

struct AllergiesView: View {

    @State private var allergies = ""
    @State private var showDiet = false

    var body: some View {

        VStack(spacing: 35) {

            Spacer()

            Text("Does your pet have any allergies?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("Optional")
                .font(.title3)
                .foregroundStyle(.secondary)

            TextField("Ex: Chicken, Beef, Environmental, None", text: $allergies)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Spacer()

            Button {

                showDiet = true

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
        .navigationDestination(isPresented: $showDiet) {

            DietView()

        }

    }
}

#Preview {

    NavigationStack {

        AllergiesView()

    }

}
