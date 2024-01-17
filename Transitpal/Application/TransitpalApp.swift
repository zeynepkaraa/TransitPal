//
//  TransitpalApp.swift
//  Transitpal

import SwiftUI

@main
struct TransitpalApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            CredentialPageView()
        }
    }
}
