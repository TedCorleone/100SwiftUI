# 100SwiftUI

[Reference link](https://www.hackingwithswift.com/quick-start/swiftui/how-to-present-a-full-screen-modal-view-using-fullscreencover)

<br>

<pre><code>
var body: some View {
        Button("Present!") {
            self.isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
}
</code></pre>

<br>
<img src="../Resource/100-9-1.png" width="200">
<img src="../Resource/100-9-2.png" width="200">
<img src="../Resource/100-9-3.png" width="200">