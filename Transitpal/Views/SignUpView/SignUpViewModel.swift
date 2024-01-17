import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupnineteenText: String = ""
    @Published var groupeighteenoneText: String = ""
    @Published var emailoneText: String = ""
    @Published var isValidEmailoneText: Bool = true
    @Published var bxStartDate: Date? = nil
    @Published var bxEndDate: Date? = nil
    @Published var groupfortyeightText: String = ""
    @Published var genderOnePicker1: String = "Option 1"
    @Published var genderOnePicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var groupfortysevenText: String = ""
}
