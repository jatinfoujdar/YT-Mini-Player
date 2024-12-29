import SwiftUI

struct TabViewExample: View {
    @State private var activeTab: Tab = .home
    
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(Tab.home)
            
            Text("Shorts View")
                .tabItem {
                    Label("Shorts", systemImage: "play.rectangle.fill")
                }
                .tag(Tab.shorts)
            
            Text("Subscriptions View")
                .tabItem {
                    Label("Subscriptions", systemImage: "bell.fill")
                }
                .tag(Tab.subscriptions)
            
            Text("You View")
                .tabItem {
                    Label("You", systemImage: "person.fill")
                }
                .tag(Tab.you)
        }
    }
}

enum Tab: Hashable {
    case home, shorts, subscriptions, you
}

#Preview {
    TabViewExample()
}

