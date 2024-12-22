import SwiftUI

struct ScrollableContentWithFooterView<Content, BottomView>: View where Content: View, BottomView: View {
    private let contentView: Content
    private let bottomView: BottomView
    
    init(
        @ViewBuilder contentView: () -> Content,
        @ViewBuilder bottomView: () -> BottomView
    ) {
        self.contentView = contentView()
        self.bottomView = bottomView()
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            Spacer()
                .frame(height: 0.5)
            
            ScrollView {
                contentView
            }
            
            bottomView
        }
    }
}
