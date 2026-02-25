import AppIntents

struct ResetCounterIntent: AppIntent {
    static var title: LocalizedStringResource = "Reset Counter"
    static var description = IntentDescription("Resets the counter value to 0")
    
    func perform() async throws -> some IntentResult {
        CounterModel.shared.reset()
        return .result()
    }
}
