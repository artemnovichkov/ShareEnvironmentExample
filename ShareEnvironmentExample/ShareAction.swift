//
//  Created by Artem Novichkov on 13.02.2021.
//

import SwiftUI

struct ShareAction {
    
    func callAsFunction(_ activityItems: [Any]) {
        let vc = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        let windowScenes = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
        let activeScene = windowScenes
            .filter { $0.activationState == .foregroundActive }
        let firstActiveScene = activeScene.first
        let keyWindow = firstActiveScene?.keyWindow
        keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
    }
}

struct ShareActionEnvironmentKey: EnvironmentKey {
    
    static let defaultValue: ShareAction = .init()
}

extension EnvironmentValues {
    
    var share: ShareAction {
        self[ShareActionEnvironmentKey.self]
    }
}
