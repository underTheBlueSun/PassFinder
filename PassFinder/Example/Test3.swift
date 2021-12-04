//struct MainView: View {
//    var body: some View {
//        NavigationView {
//            List {
//                Text("1")
//                Text("2")
//            }.navigationBarTitle("Main View")
//        }
//    }
//}
// 
//struct SubView: View {
//    var body: some View {
//        VStack(spacing: 10.0) {
//            Text("간단한 소개")
//                .foregroundColor(.orange)
//                .bold()
//            Text("Tab View를 활용한 화면입니다.")
//        }
//    }
//}
// 
//final class TabViewManager: ObservableObject {
//    @Published var currentTab = 0
// 
//    static let shared = TabViewManager()
// 
//    func abc() {
//        let tab = TabView() {
//            MainView().tabItem {
//                Text("Main View")
//            }.tag(0)
//            SubView().tabItem {
//                Text("Sub View")
//            }.tag(1)
//        }
//    }
//}
//
