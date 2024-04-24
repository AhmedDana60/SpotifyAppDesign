//
//  SpotifyAppDesignApp.swift
//  SpotifyAppDesign
//
//  Created by Ahmed Dana Mohammed on 4/20/24.
//

import SwiftUI
import SwiftfulRouting

@main
struct SpotifyAppDesignApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
