//
//  ShareAction.swift
//  ShareEnvironmentExample
//
//  Created by Artem Novichkov on 13.02.2021.
//

import SwiftUI

struct ShareAction {
    
    func callAsFunction(_ activityItems: [Any]) {
        let vc = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(vc, animated: true, completion: nil)
    }
}

struct ShareActionEnvironmentKey: EnvironmentKey {
    
    static let defaultValue: ShareAction = .init()
}

extension EnvironmentValues {
    
    var share: ShareAction {
        self[ShareActionEnvironmentKey]
    }
}
