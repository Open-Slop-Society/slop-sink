import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.09, green: 0.13, blue: 0.27),
                    Color(red: 0.08, green: 0.43, blue: 0.74)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Image(systemName: "iphone.gen3.radiowaves.left.and.right")
                    .font(.system(size: 58))
                    .symbolRenderingMode(.hierarchical)
                    .foregroundStyle(.white)

                Text("Sideload Test")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)

                Text("このアプリは SideStore / iLoader の動作確認用です。")
                    .font(.body)
                    .foregroundStyle(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Text("Tap count: \(tapCount)")
                    .font(.title3.monospacedDigit())
                    .foregroundStyle(.white)
                    .padding(.top, 8)

                Button {
                    tapCount += 1
                } label: {
                    Text("Tap Me")
                        .font(.headline)
                        .foregroundStyle(Color(red: 0.08, green: 0.13, blue: 0.26))
                        .padding(.horizontal, 24)
                        .padding(.vertical, 14)
                        .background(.white)
                        .clipShape(Capsule())
                }
                .buttonStyle(.plain)

                Text("起動してタップ回数が増えれば成功です。")
                    .font(.footnote)
                    .foregroundStyle(.white.opacity(0.82))
            }
            .padding(28)
        }
    }
}

#Preview {
    ContentView()
}
