import SwiftUI

struct ScrollableContentView<Content>: View where Content: View {
    @ViewBuilder let contentView: Content
    
    var body: some View {
        VStack(spacing: 0.0) {
            Spacer()
                .frame(height: 0.5)
            
            ScrollView {
                contentView
            }
        }
    }
}
