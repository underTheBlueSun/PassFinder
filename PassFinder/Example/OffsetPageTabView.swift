//
//  OffsetPageTabView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct OffsetPageTabView<Content: View> : UIViewRepresentable {
    
    var content: Content
    @Binding var offset: CGFloat
    
    init(offset: Binding<CGFloat>, @ViewBuilder content: @escaping () -> Content) {
//    init(offset: CGFloat, @ViewBuilder content: @escaping ()->Content) {
        self.content = content()
        self._offset = offset
    }
    
    func makeUIView(context: Context) -> UIScrollView {
        let scrollview = UIScrollView()
        let hostview = UIHostingController(rootView: content)
        hostview.view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            hostview.view.topAnchor.constraint(equalTo: scrollview.topAnchor),
            hostview.view.leadingAnchor.constraint(equalTo: scrollview.leadingAnchor),
            hostview.view.trailingAnchor.constraint(equalTo: scrollview.trailingAnchor),
            hostview.view.bottomAnchor.constraint(equalTo: scrollview.bottomAnchor),
            // if you are using vertical paging...
            // then dont declare height constraints...
            hostview.view.heightAnchor.constraint(equalTo: scrollview.heightAnchor)
        ]

        scrollview.addSubview(hostview.view)
        scrollview.addConstraints(constraints)

        // enabling paging...
        scrollview.isPagingEnabled = true
        scrollview.showsVerticalScrollIndicator = false
        scrollview.showsHorizontalScrollIndicator = false

        return scrollview
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
    }
}

struct OffsetPageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
