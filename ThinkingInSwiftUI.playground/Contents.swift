import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        VStack {
            Button(action: { self.tapCount += 1 }, label: {
                Text("Tap me!")
                    .padding()
                    .background(Color(.tertiarySystemFill))
                    .cornerRadius(5)
            }).padding()

            if tapCount > 0 {
                Text("You've tapped \(tapCount) times")
            } else {
                Text("You've not yet tapped")
            }
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
