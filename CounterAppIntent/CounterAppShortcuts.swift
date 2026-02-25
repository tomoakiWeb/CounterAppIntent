import AppIntents

struct CounterAppShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: IncrementCounterIntent(),
            phrases: [
                "Increment \(.applicationName) counter",
                "Increase \(.applicationName) counter",
                "Add one to \(.applicationName)"
            ],
            shortTitle: "Increment",
            systemImageName: "plus.circle"
        )
        
        AppShortcut(
            intent: DecrementCounterIntent(),
            phrases: [
                "Decrement \(.applicationName) counter",
                "Decrease \(.applicationName) counter",
                "Subtract one from \(.applicationName)"
            ],
            shortTitle: "Decrement",
            systemImageName: "minus.circle"
        )
        
        AppShortcut(
            intent: ResetCounterIntent(),
            phrases: [
                "Reset \(.applicationName) counter",
                "Clear \(.applicationName) counter"
            ],
            shortTitle: "Reset",
            systemImageName: "arrow.counterclockwise"
        )
        
        AppShortcut(
            intent: OpenSettingsIntent(),
            phrases: [
                "Open \(.applicationName) settings",
                "Show \(.applicationName) settings"
            ],
            shortTitle: "Settings",
            systemImageName: "gearshape"
        )
    }
}
