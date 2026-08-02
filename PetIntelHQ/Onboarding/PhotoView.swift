import SwiftUI
import PhotosUI

struct PhotoView: View {

    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    @State private var showBirthday = false

    var body: some View {

        VStack(spacing: 35) {

            Spacer()

            Text("Add a photo")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("This helps personalize your pet's profile.")
                .font(.title3)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            if let selectedImage {

                selectedImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 220)
                    .clipShape(Circle())

            } else {

                Circle()
                    .fill(Color.gray.opacity(0.15))
                    .frame(width: 220, height: 220)
                    .overlay(
                        Image(systemName: "camera.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.gray)
                    )

            }

            PhotosPicker(selection: $selectedItem,
                         matching: .images) {

                Text("Choose Photo")
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

            Button {

                showBirthday = true

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

            Spacer()

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $showBirthday) {

            BirthdayView()

        }
        .onChange(of: selectedItem) {

            Task {

                if let data = try? await selectedItem?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {

                    selectedImage = Image(uiImage: uiImage)

                }

            }

        }

    }

}

#Preview {

    NavigationStack {

        PhotoView()

    }

}
