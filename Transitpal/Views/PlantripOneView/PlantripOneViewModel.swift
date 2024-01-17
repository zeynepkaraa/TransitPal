import Foundation
import SwiftUI

class PlantripOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupfiftyoneText: String = ""
    @Published var groupeighteenPicker1: String = "Option 1"
    @Published var groupeighteenPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var groupfiftytwoText: String = ""
}
