import AppIntents
import SwiftUI

struct OpenSettingsIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Settings"
    static var description = IntentDescription("Opens the app settings screen")
    static var openAppWhenRun: Bool = true
    
    @MainActor
    func perform() async throws -> some IntentResult {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = scene.windows.first,
           let rootViewController = window.rootViewController {
            let settingsView = SettingsView()
            let hostingController = UIHostingController(rootView: settingsView)
            hostingController.modalPresentationStyle = .pageSheet
            rootViewController.present(hostingController, animated: true)
        }
        return .result()
    }
}
