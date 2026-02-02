import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.2
    @State private var opacity = 0.2    // Начальная прозрачность
    
    var body: some View {
        if isActive {
            ContentView() // Переход на основной экран приложения
        } else {
            VStack {
                VStack {
                    Image(systemName: "bolt.fill") // Иконка молнии
                        .font(.system(size: 150))
                        .foregroundColor(.yellow) // Желтая молния
                }
                .scaleEffect(size) // Анимируем размер
                .opacity(opacity)  // Анимируем прозрачность
                .onAppear {
                    withAnimation(.easeIn(duration: 3)) { // Анимация длительностью 1.5 секунды
                        self.size = 1.0 // Увеличиваем до нормального размера
                        self.opacity = 1.0 // Делаем полностью видимым
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Задержка в 2 секунды
                    withAnimation {
                        self.isActive = true // Активируем переход на основной экран
                    }
                }
            }
        }
    }
}
