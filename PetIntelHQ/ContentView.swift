import SwiftUI

struct ContentView: View {

    @State private var showPetName = false

    var body: some View {

        NavigationStack {

            ZStack {

                Color(red: 246/255,
                      green: 250/255,
                      blue: 253/255)
                    .ignoresSafeArea()

                VStack {

                    Spacer()

                    Image(systemName: "pawprint.fill")
                        .font(.system(size: 55))
                        .foregroundStyle(
                            Color(red: 111/255,
                                  green: 174/255,
                                  blue: 219/255)
                        )

                    Text("PetIntelHQ")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundStyle(
                            Color(red: 79/255,
                                  green: 137/255,
                                  blue: 197/255)
                        )

                    Text("Smarter pet care starts here.")
                        .font(.title3)
                        .foregroundStyle(.secondary)
                        .padding(.top, 5)

                    Spacer()

                    VStack(alignment: .leading, spacing: 24) {

                        BulletPoint(text: "Track your pet's health")

                        BulletPoint(text: "Manage nutrition")

                        BulletPoint(text: "Access trusted veterinary information")

                        BulletPoint(text: "Find nearby emergency care")

                    }

                    Spacer()

                    VStack(spacing: 6) {

                        Text("Everything your pet needs.")
                            .font(.title3)
                            .fontWeight(.semibold)

                        Text("All in one place.")
                            .foregroundStyle(.secondary)

                    }

                    Spacer()

                    Button {

                        showPetName = true

                    } label: {

                        Text("Continue")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 230, height: 55)
                            .background(
                                Color(red: 111/255,
                                      green: 174/255,
                                      blue: 219/255)
                            )
                            .clipShape(Capsule())

                    }

                    Spacer()

                }
                .padding()

            }
            .navigationDestination(isPresented: $showPetName) {

                PetNameView()

            }

        }

    }

}

struct BulletPoint: View {

    let text: String

    var body: some View {

        HStack {

            Circle()
                .fill(
                    Color(red: 111/255,
                          green: 174/255,
                          blue: 219/255)
                )
                .frame(width: 8, height: 8)

            Text(text)
                .font(.headline)

            Spacer()

        }

    }

}

#Preview {

    ContentView()

}
