//
//  Created by Artem Novichkov on 13.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.share) var share
    
    var body: some View {
        VStack {
            Button("Share") {
                share([URL(string: "https://www.artemnovichkov.com")!])
            }
            ShareLink(item: URL(string: "https://www.artemnovichkov.com")!) {
                Text("Share")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
