import SwiftUI

struct PowerView: View {
    @State private var amps: String = ""
    @State private var volts: String = "220"
    
    var watts: Double {
        let a = Double(amps) ?? 0
        let v = Double(volts) ?? 0
        return a * v
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Параметры сети")) {
                    HStack {
                        Text("Сила тока (A)")
                        TextField("0", text: $amps)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Напряжение (V)")
                        TextField("220", text: $volts)
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.trailing)
                    }
                }
                
                Section(header: Text("Результат")) {
                    HStack {
                        Text("Мощность:")
                        Spacer()
                        Text("\(Int(watts)) Вт")
                            .bold()
                            .foregroundColor(watts > 3500 ? .red : .primary)
                
                    }
                }
            }
            .navigationTitle("Электрика")
        }
    }
}
