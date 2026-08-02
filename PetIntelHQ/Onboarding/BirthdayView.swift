import SwiftUI

struct BirthdayView: View {

    @State private var birthday = Date()
    @State private var knowsBirthday = true
    @State private var estimatedAge = ""
    @State private var showFavoriteThing = false

    var body: some View {

        VStack(spacing: 30) {

            Spacer()

            Text("When is your pet's birthday?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            if knowsBirthday {

                DatePicker(
                    "Birthday",
                    selection: $birthday,
                    displayedComponents: .date
                )
                .datePickerStyle(.graphical)

            } else {

                TextField("Estimated Age (Ex: 3 years)", text: $estimatedAge)
                    .textFieldStyle(.roundedBorder)

            }

            Toggle("I don't know my pet's birthday", isOn: $knowsBirthday)
                .onChange(of: knowsBirthday) { _, newValue in
                    knowsBirthday = newValue
                }

            Spacer()

            Button {

                showFavoriteThing = true

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
        .navigationDestination(isPresented: $showFavoriteThing) {

            FavoriteThingView()

        }

    }

}

#Preview {

    NavigationStack {

        BirthdayView()

    }

}
