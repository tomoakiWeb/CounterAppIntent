# CounterAppIntent

A simple counter app demonstrating App Intents and Siri integration for iOS.

## Features

- **Counter functionality**: Increment, decrement, and reset a counter
- **Siri integration**: Control the counter using voice commands
- **App Shortcuts**: Pre-configured shortcuts for quick access
- **Settings view**: Display app version information

## App Intents

This app includes the following App Intents that can be triggered via Siri or the Shortcuts app:

### IncrementCounterIntent
Increases the counter by 1.

**Voice commands:**
- "Increment CounterAppIntent counter"
- "Increase CounterAppIntent counter"
- "Add one to CounterAppIntent"

### DecrementCounterIntent
Decreases the counter by 1.

**Voice commands:**
- "Decrement CounterAppIntent counter"
- "Decrease CounterAppIntent counter"
- "Subtract one from CounterAppIntent"

### ResetCounterIntent
Resets the counter to 0.

**Voice commands:**
- "Reset CounterAppIntent counter"
- "Clear CounterAppIntent counter"

### OpenSettingsIntent
Opens the app settings screen.

**Voice commands:**
- "Open CounterAppIntent settings"
- "Show CounterAppIntent settings"

## Architecture

### Key Components

- **CounterModel**: Observable singleton class managing the counter state
- **ContentView**: Main UI displaying the counter with increment/decrement buttons
- **SettingsView**: Settings screen showing app version
- **CounterAppShortcuts**: App Shortcuts provider for Siri integration
- **App Intents**: Individual intent implementations for each action
