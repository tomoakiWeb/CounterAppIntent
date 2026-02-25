import Foundation
import SwiftUI

@Observable
class CounterModel {
    static let shared = CounterModel()
    
    var count: Int = 0
    
    private init() {}
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
    
    func reset() {
        count = 0
    }
}
