import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    PowerView()
                        .tabItem {
                            Label("Нагрузка", systemImage: "bolt.fill")
                        }
                    
                    DistanceView()
                        .tabItem {
                            Label("Расстояние", systemImage: "ruler.fill")
                        }
                }
                .accentColor(.yellow)
            }
    }

#Preview {
    ContentView()
}
