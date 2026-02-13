import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 160)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 2))

            Text("Nader Mahbub Khan")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("A dedicated UX professional committed to crafting intuitive, accessible, and visually refined digital experiences. With a strong foundation in user-centered design principles, every project is approached with meticulous attention to detail and a focus on delivering meaningful interactions that resonate with end users.")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal, 32)

            Button(action: {
                if let url = URL(string: "https://facebook.com/nadermahbubkhan") {
                    openURL(url)
                }
            }) {
                Text("Connect Me")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 48)

            Spacer()
        }
        .background(Color.white.ignoresSafeArea())
    }
}