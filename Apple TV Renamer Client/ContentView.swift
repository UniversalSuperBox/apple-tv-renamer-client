//
//  ContentView.swift
//  Apple TV Renamer Client
//
//  Created by Dalton Durst on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    var form: ServerForm
    @State var formOutput: FormOutput
    var body: some View {
        NavigationView() {
            RecursiveFormPageNavigation(formPages: form.pages.reversed(), output: $formOutput) {
                List(formOutput.output) { page in
                    if let pageText = page.pageOutput {
                        Text(pageText)
                    } else {
                        Text("Page \(page.pageId) had no output text")
                    }
                }
            }
        }
    }
}

struct RecursiveFormPageNavigation<Content: View>: View {
    var formPages: [FormPage]
    @Binding var output: FormOutput
    @State private var userInput: String = ""
    @ViewBuilder var finalPage: Content
    @ViewBuilder var body: some View {
        var wipPages = formPages
        if let thisPage = wipPages.popLast() {
            let navigation = NavigationLink("Next") {
                RecursiveFormPageNavigation(formPages: wipPages, output: $output) {
                    finalPage
                }
            }
            if thisPage.type == .textInput {
                VStack {
                    Text(thisPage.title)
                    TextField(thisPage.inputLabel, text: $userInput)
                        .onSubmit {
                            output.output.append(FormPageOutput(pageId: thisPage.id, pageOutput: userInput))
                        }
                    navigation
                }
            }
        } else {
            finalPage
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(form: previewForm, formOutput: FormOutput(output: [FormPageOutput(pageId: UUID(), pageOutput: "test")]))
        }
    }
}
