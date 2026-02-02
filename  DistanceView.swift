import SwiftUI

struct DistanceView: View {
    @State private var feet: String = ""
    
    var meters: Double {
        let f = Double(feet.replacingOccurrences(of: ",", with: ".")) ?? 0
        return f * 0.3048
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Американская система (Feet)")) {
                    TextField("Введите футы", text: $feet)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Метрическая система")) {
                    HStack {
                        Text("Результат:")
                        Spacer()
                        Text(String(format: "%.2f м", meters))
                            .bold()
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("Расстояние")
        }
    }
}
