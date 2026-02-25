import AppIntents

struct IncrementCounterIntent: AppIntent {
    static var title: LocalizedStringResource = "Increment Counter"
    static var description = IntentDescription("Increases the counter value by 1")
    
    func perform() async throws -> some IntentResult {
        CounterModel.shared.increment()
        return .result()
    }
}
