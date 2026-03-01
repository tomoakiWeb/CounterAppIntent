import SwiftUI
import AppIntents

struct ContentView: View {
    @State private var counterModel = CounterModel.shared
    @State private var showSettings = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Counter App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("\(counterModel.count)")
                    .font(.system(size: 80, weight: .bold))
                    .foregroundStyle(.blue)
                
                HStack(spacing: 20) {
                    Button(action: {
                        counterModel.decrement()
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.red)
                    }
                    
                    Button(action: {
                        counterModel.reset()
                    }) {
                        Image(systemName: "arrow.counterclockwise.circle.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.orange)
                    }
                    
                    Button(action: {
                        counterModel.increment()
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.green)
                    }
                }
                
                Spacer()
                    .frame(height: 50)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("AppIntent Features")
                        .font(.headline)
                    Text("Available operations from Siri Shortcuts:")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("• Increment Counter")
                        Text("• Decrement Counter")
                        Text("• Reset Counter")
                        Text("• Settings")
                    }
                    .font(.caption)
                    .foregroundStyle(.secondary)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showSettings = true
                    }) {
                        Image(systemName: "gearshape")
                            .font(.title2)
                    }
                }
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
            #if os(iOS)
            .onAppIntentExecution(OpenSettingsIntent.self) { intent in
                showSettings = true
            }
            #endif
        }
    }
}

#Preview {
    ContentView()
}
