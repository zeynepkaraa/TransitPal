import Foundation
import SwiftUI

class VerifyOrganizationIDViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupeighteenPicker1: String = "Option 1"
    @Published var groupeighteenPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
