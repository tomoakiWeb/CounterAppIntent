import AppIntents

struct OpenSettingsIntent: AppIntent, TargetContentProvidingIntent {
    static var title: LocalizedStringResource = "Open Settings"
    static var description = IntentDescription("Opens the app settings screen")
    static var openAppWhenRun: Bool = true
    
    @MainActor
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
