import SwiftUI

struct ContentView: View {
    
    @StateObject private var tabState = TabState()
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        ZStack{
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading) {
                        GreetingHeader(user: user)
                            .padding(.bottom, 32)
                        
                        if tabState.isTapped == false {
                            tabs[selectedTab].view
                        }
                        else {
                            tabState.selectedView
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                    .frame(alignment: .top)
                }
                .background(.white)
                .scrollIndicators(.hidden)
            }
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
        .environmentObject(tabState)
    }
}

#Preview {
    ContentView()
}

class TabState: ObservableObject {
    @Published var isTapped: Bool = false
    @Published var selectedView = EmptyView()
}
