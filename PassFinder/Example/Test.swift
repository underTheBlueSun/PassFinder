//
//  OffsetPageTabView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct Test<Content: View> : UIViewRepresentable {

    
    
    var content: Content
    @Binding var offset: CGFloat
    
    init(offset: CGFloat, @ViewBuilder content: @escaping ()->Content) {
        self.content = content()
        self._offset = offset
    }
    
    func makeUIView(context: Context) -> UIScrollView {
        let scrollview = UIScrollView()
        return scrollview

    }

    func updateUIView(_ uiView: UIScrollView, context: Context) {

    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
