import Testing
@testable import SwiftUISampleProj

struct SwiftUISampleProjTests {

    @Test func example() async throws {
        // Dummy Test: Check if a value is incremented correctly
        let initialValue = 5
        let incrementedValue = initialValue + 1

        #expect(incrementedValue == 6, "Incremented value should be 6")
    }

    @Test func stringTest() async throws {
        // Dummy Test: Verify string equality
        let greeting = "Hello, SwiftUI!"
        let expectedGreeting = "Hello, SwiftUI!"

        #expect(greeting == expectedGreeting, "Greeting should match expected value")
    }

    @Test func arrayTest() async throws {
        // Dummy Test: Verify array contains an element
        let numbers = [1, 2, 3, 4, 5]
        let targetValue = 3

        #expect(numbers.contains(targetValue), "Array should contain \(targetValue)")
    }
}
