//
//  ContentView.swift
//  Apple TV Renamer Client
//
//  Created by Dalton Durst on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    @State private var activePage: Int = 1
    var form: ServerForm
    var body: some View {
        NavigationView() {
            RecursiveFormPageNavigation(formPages: form.pages)
        }
    }
}

// Not sure how to make the last page configurable yet. Maybe https://www.swiftbysundell.com/tips/swiftui-extensions-using-generics/ can help?
struct RecursiveFormPageNavigation: View {
    var formPages: [FormPage]
    @ViewBuilder var body: some View {
        var wipPages = formPages
        if let thisPage = wipPages.popLast() {
            VStack {
                Text(thisPage.title)
                NavigationLink("Next") {
                    RecursiveFormPageNavigation(formPages: wipPages)
                }
            }
        } else {
            VStack {Text("All done!")}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(form: previewForm)
        }
    }
}
