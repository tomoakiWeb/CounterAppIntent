import AppIntents

struct DecrementCounterIntent: AppIntent {
    static var title: LocalizedStringResource = "Decrement Counter"
    static var description = IntentDescription("Decreases the counter value by 1")
    
    func perform() async throws -> some IntentResult {
        CounterModel.shared.decrement()
        return .result()
    }
}
